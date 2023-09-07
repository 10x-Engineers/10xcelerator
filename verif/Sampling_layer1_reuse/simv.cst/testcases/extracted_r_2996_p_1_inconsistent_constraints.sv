class c_2996_1;
    integer i = -498;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2996_1;
    c_2996_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz00zx10zxz110xx01z110xz0x10xxxxzxzxxzzxxzxzzzzzzzzxxzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
