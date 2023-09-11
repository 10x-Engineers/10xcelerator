class c_1950_1;
    integer i = -323;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1950_1;
    c_1950_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xxz0x001x1zxzx00z0z0x0x0xz1z1xzzxxxzxzxxxxzzzxxzzzxzzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
