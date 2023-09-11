class c_324_1;
    integer i = -52;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_324_1;
    c_324_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10xx0xzx01z00111111x000xx01xxxxxzzxxzxzzxxxzxzzzxxzxzxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram