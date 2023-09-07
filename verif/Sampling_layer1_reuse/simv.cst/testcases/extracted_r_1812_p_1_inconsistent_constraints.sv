class c_1812_1;
    integer i = -300;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1812_1;
    c_1812_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11zx1zzzxxzx0101110zx1z1zz0xxxzzzxxzzxzzxxxzzzxzxzzxzxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
