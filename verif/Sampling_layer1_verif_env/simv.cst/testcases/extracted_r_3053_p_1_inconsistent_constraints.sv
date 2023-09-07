class c_3053_1;
    integer i = -507;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3053_1;
    c_3053_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz111z110xxx0xxzzz1110zzzz0xz001xzzzzxzxzxxxxzxzzzzxxxzzxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
