# -------------------------------------------------------------------------- #
# Program to Read one cluster of Pressure Sensor Array using Xilinx Zynq Zybo
# Author : A.S. Warnakulasuriya
# -------------------------------------------------------------------------- #

import matplotlib.animation as animation
import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns
import serial
import time

# --------------------------------------
# Variables of the Pressure Sensor Array
# --------------------------------------
NR = 8      # No. of rows
NC = 8      # No. of columns
v1 = 3000      # ADC Lowest
v2 = 4000   # ADC Highest
COM = "COM4"
baudR = 115200
numPoints_ini = 66
numPoints = 64
dataList_ini = [0]*numPoints_ini
dataList = [0]*numPoints
count = 0

rows = ["R{}".format(i) for i in range(1, NR+1)]
columns = ["C{}".format(i) for i in range(1, NC+1)]

# --------------------------------------
# Initiate Serial Communication
# --------------------------------------
ser = serial.Serial(COM, baudrate=baudR)
# time.sleep(1)        # fixed time delay before the user can request

print("FPGA Connected")
time.sleep(0.1)
print("Connected to: " + ser.portstr)
time.sleep(0.1)
print("Initializing Data Acquisition...\n")


def getValues():
    ''' #Requesting, Reading and Returning serial data from the zynq '''

    # ser.write(b'K')                                    # b signifies that we are writing a byte to the serial bus
    zynqData = ser.readline().decode().split('\r\n')  # readline() reads until end of line character \n
    return zynqData[0]

def hmap(data):
    """ Generate heatmap from seaborn library"""

    ax = sns.heatmap(data, vmin=v1, vmax=v2, cmap="plasma_r", xticklabels=columns, yticklabels=rows, linewidths=0.1)
    ax.tick_params(top=True, bottom=False, labeltop=True, labelbottom=False)

    return ax


def matRead():

    global count
    startTime = time.time()
    if count == 0:
        for j in range(0, numPoints_ini):
            dataList_ini[j] = int(getValues())
        oneCluster = np.array(dataList_ini[2:]).reshape(NR, NC)
        count += 1
    else:
        for j in range(0, numPoints):
            dataList[j] = int(getValues())
        oneCluster = np.array(dataList).reshape(NR, NC)
    print(oneCluster)
    print("\n Execution time = %.3f seconds\n" % float((time.time() - startTime)))

    return oneCluster


def animate_heat_map():

    fig = plt.figure(figsize=(8, 6))
    fig.canvas.set_window_title('GUI Interface')
    fig.tight_layout()

    nx = ny = 8
    data = np.zeros((nx, ny))
    # ax = sns.heatmap(data, vmin=v1, vmax=v2)
    ax = hmap(data)

    def init():
        plt.clf()
        # ax = sns.heatmap(data, vmin=v1, vmax=v2)
        ax = hmap(data)

    def animate(i):
        plt.clf()
        data = matRead()
        # ax = sns.heatmap(data, vmin=v1, vmax=v2)
        ax = hmap(data)

    anim = animation.FuncAnimation(fig, animate, init_func=init, interval=1000)

    plt.show()


if __name__ == "__main__":
    animate_heat_map()