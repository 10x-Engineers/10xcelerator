class c_1090_1;
    integer i = -180;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1090_1;
    c_1090_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0111x01z1z000xzx1z0110xx11xx1z0zzxzzzzzxzzzzxzxxzxxzxxxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
