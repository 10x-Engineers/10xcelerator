class c_3301_1;
    integer i = -549;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3301_1;
    c_3301_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z01x0110xxz101x1x01z11x1x1zzx0zzzzxzxzxzzzzxzxxxzxzzxzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
