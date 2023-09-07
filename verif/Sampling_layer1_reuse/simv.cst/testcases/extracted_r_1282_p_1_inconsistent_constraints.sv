class c_1282_1;
    integer i = -212;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1282_1;
    c_1282_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxx1x0xzzzxx1z01xzz11z1x1zzx01zxzxzxxzxzxxzxzzzzxzxzxzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
