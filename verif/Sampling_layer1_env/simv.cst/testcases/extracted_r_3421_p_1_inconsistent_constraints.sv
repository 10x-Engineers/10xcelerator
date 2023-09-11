class c_3421_1;
    integer i = -569;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3421_1;
    c_3421_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00x10z0xxzx0x0x01z1x000zz1x011xzzzxzxxzzxxxxxzzxxzxzxxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
