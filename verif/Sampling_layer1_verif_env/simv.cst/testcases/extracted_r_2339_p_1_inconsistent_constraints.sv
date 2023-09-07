class c_2339_1;
    integer i = -388;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2339_1;
    c_2339_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz01z00zx0xx01x1xx1zz101z1xzz10xxxxzzzxxxzzxzzzxzxxzzxxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
