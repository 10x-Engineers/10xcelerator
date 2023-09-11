class c_2436_1;
    integer i = -404;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2436_1;
    c_2436_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z010zz11xz1x010zz1x01z0x01011zzzxxzzzzzxzxzzxxzzxzzzzzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
