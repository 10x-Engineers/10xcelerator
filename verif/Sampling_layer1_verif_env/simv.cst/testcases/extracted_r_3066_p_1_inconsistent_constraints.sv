class c_3066_1;
    integer i = -509;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3066_1;
    c_3066_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x10zz10z1z1x0xzz0x1x01z0xzx1xzxzzxzxxzxzxxzxxzzxxzzxxzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
