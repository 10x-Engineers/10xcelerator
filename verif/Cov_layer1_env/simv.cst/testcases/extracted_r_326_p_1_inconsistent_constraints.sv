class c_326_1;
    integer i = -324;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_326_1;
    c_326_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00zxx1111z001x0x01z00z11zxz110zxzzxzxzxxzzzxxzzzxzxzxxxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
