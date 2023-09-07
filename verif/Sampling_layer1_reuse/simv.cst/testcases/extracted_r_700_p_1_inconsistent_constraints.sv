class c_700_1;
    integer i = -115;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_700_1;
    c_700_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzz0x01z0zz10z0xx11xx11x0x10xxzzxxxzxzzxxzxzzzxzzxxxxzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
