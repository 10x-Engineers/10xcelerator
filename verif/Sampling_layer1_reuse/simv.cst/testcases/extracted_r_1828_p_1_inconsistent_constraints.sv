class c_1828_1;
    integer i = -303;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1828_1;
    c_1828_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zz0xz0z10z01z10zxzzxxzxz10110zxxzzzxzzzxzxxzzzxxxxxzxzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
