class c_2255_1;
    integer i = -374;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2255_1;
    c_2255_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x1x11xx1x1x11xxzzzxx1z0101zxz1xxzxxxzxxxzxzxzxzzxxzxzzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
