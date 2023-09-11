class c_2756_1;
    integer i = -458;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2756_1;
    c_2756_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx01z01xzzxz1z1zzx1xzx10z1zz11zxxzxxxzxzzzzzxxzxzzxzzxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
