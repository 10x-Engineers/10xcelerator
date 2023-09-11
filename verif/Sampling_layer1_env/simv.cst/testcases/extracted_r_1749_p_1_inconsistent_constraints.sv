class c_1749_1;
    integer i = -290;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1749_1;
    c_1749_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xz011zxz0zz100111110xz01100z10zzzxzzxxxxxzzxxzzzxzzxzxxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
