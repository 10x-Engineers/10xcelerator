class c_520_1;
    integer i = -85;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_520_1;
    c_520_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx001xzx1zzz00x0x111xxz1z1zz01z0zzzxxzzxxzxxxzzxxzxxzxxzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
