class c_2282_1;
    integer i = -379;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2282_1;
    c_2282_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z0zx0xz0x1xzzzz0100x1zxzx1111xzzxzxzxxxzxxzzzzxzzzzzzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
