class c_242_1;
    integer i = -39;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_242_1;
    c_242_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z1x1x0x1zx1xxzz0z0111001x0000xxzxxxzxxxzzzxzzxzxzxzzzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
