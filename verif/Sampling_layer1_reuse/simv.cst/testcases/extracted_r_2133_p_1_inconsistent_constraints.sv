class c_2133_1;
    integer i = -354;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2133_1;
    c_2133_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z1x101xzzx10x1zx0x1x111x00zxzzxxxzxzzzxzzzxxxzzxzzxzzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
