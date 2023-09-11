class c_60_1;
    integer i = -8;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_60_1;
    c_60_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z011z10z000xxz01z1zxxx0z1zxzzzzzzzxxzxzxxzzxxzxzzxxzxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
