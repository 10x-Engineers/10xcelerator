class c_282_1;
    integer i = -45;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_282_1;
    c_282_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz01zzz0101xzxxxzzz10xz0z0x0xx0zxzzxxzzxxzzxzxzzxzzzxxzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
