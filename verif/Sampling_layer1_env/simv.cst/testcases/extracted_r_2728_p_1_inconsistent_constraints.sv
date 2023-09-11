class c_2728_1;
    integer i = -453;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2728_1;
    c_2728_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz11z0x1zzzxz0z0zz10xxzx1zxz01xzxxzzxzxzzzzzxzxxzxxxxxzxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
