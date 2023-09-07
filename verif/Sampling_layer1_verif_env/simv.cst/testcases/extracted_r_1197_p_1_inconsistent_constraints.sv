class c_1197_1;
    integer i = -198;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1197_1;
    c_1197_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z001xzx011x11zz0xxxz010x1z100x0zzzzzxzxxzzxxzzzxxxxzzxzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
