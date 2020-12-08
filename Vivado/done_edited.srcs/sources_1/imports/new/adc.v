module adc
(
input resetn,input adc_clock,input h_clock,input signal_in,input recieve_ready,

output reg data_ready,output wire data_ready_test,output reg [11:0] data,output reg cs,output adc_clock_out
);
reg [9:0] counter=0;
reg clock_reg=0;
always @(posedge adc_clock)begin
    if(!resetn)begin
        counter<=0;
    end
    else begin
        counter<=counter+1;
        if(counter==1000)begin
            counter<=0;
            clock_reg<=!clock_reg;
        end
    end
end
assign data_ready_test=data_ready;
assign adc_clock_out=clock_reg;
wire clock;
assign clock=(!resetn)?h_clock:clock_reg;

reg [4:0] state;
always @(posedge clock)begin
    if(!resetn)begin
        state<=0;
        data_ready<=0;
        cs<=1; 
        data<=0;
    end
    else begin
        case(state)
            0:begin// zero means positive edge cycle starting from 1
                 state<=state+1;    //no read   
            end
            1:begin
                 state<=state+1;    //no read
            end
            2:begin
                 state<=state+1;    //no read   
            end
            3:begin
                 state<=state+1;     //11read 1
                 data[11]<=signal_in;
            end
            4:begin
                 state<=state+1;     //10read  2
                 data[10]<=signal_in;
            end
            5:begin
                 state<=state+1;     //9read 3
                 data[9]<=signal_in;
            end
            6:begin
                 state<=state+1;       //8read 
                 data[8]<=signal_in;
            end
            7:begin
                 state<=state+1;     //7read 5
                 data[7]<=signal_in;
            end
            8:begin
                 state<=state+1;       //6read 6
                 data[6]<=signal_in;
            end
            9:begin
                 state<=state+1;     //5read 7
                 data[5]<=signal_in;
            end
            10:begin
                 state<=state+1;       //4read 8
                 data[4]<=signal_in;
            end
            11:begin
                 state<=state+1;         //3read 9
                 data[3]<=signal_in;
            end 
            12:begin
                 state<=state+1;       //2read 10
                 data[2]<=signal_in;
            end
            13:begin
                 state<=state+1;         //1read 11
                 data[1]<=signal_in;
            end
            14:begin
                 state<=state+1;        //0read 12
                 data[0]<=signal_in;
            end
            15:begin
                 state<=state+1; 
            end
            16:begin
                 state<=state+1;
                 data_ready<=1;       
            end
            17:begin
                 state<=state+1; 
                 data_ready<=0;
            end
            18:begin
                if(!recieve_ready)begin
                    state<=state+1; 
                    cs<=1;       
                 end
                 else begin
                    state<=state;
                 end
            end
            19:begin
                 state<=state+1;
                   
            end
            20:begin
                 state<=state+1;
                   
            end
            21:begin
                 state<=state+1;
                  
            end
            22:begin
                 state<=state+1;
                   
            end
            23:begin
                 state<=state+1;
                  
            end
            24:begin
                 state<=0;
                 cs<=0; 
            end
                                                                        
            default:begin
                state<=0;
                data_ready<=0;
            end
        endcase
    end
end
endmodule