class c_479_1;
    integer i = -78;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_479_1;
    c_479_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z1xzzzx110z010zzx0x01z10zz1z0xxzzxzzxzxxzxzzxxxzxzzzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
