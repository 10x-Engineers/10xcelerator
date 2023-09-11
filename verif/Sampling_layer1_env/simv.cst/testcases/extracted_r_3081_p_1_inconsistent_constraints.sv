class c_3081_1;
    integer i = -512;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3081_1;
    c_3081_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0x01010xxxzzz01z1x001z00xxxz1zxzxzxxzxxzxzzzxzxzxxzzxxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
