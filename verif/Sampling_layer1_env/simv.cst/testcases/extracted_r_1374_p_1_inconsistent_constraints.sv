class c_1374_1;
    integer i = -227;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1374_1;
    c_1374_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0x0xxz0xz00xxx01z0xx1101xzz10xxxzzxzzxxzzzzxxxxzzxxzzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
