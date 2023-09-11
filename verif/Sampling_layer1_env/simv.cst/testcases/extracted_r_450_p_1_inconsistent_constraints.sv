class c_450_1;
    integer i = -73;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_450_1;
    c_450_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxxzxzx1xzxx010x111zzxz1100x11zxzzzzzzxxzxzxzxxxxxzxzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
