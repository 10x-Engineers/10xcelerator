class c_58_1;
    integer i = -8;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_58_1;
    c_58_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1z01zzxxz0z0xxzzz01z10x01x1zzxzzzxzzzzzzzxzzxzxxxzxxxzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
