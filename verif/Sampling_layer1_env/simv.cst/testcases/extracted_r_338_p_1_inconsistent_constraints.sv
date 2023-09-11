class c_338_1;
    integer i = -55;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_338_1;
    c_338_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01zx1zz1xxz0xx010x1x01z0xzzx0xzzxxzzzxxxzxxzxxzzzzxzzxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
