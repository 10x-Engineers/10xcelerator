class c_3110_1;
    integer i = -517;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3110_1;
    c_3110_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zx0z0z1xxz0xx010zz111xxzxzx0zxzxzzzxzxzxzzxxxzxxxzxzzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
