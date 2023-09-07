class c_3244_1;
    integer i = -539;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3244_1;
    c_3244_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zzxzx1z000xzz00z0x1x0x01z0010zzxxzxzzxzzxxzzzzzzxxzzzzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
