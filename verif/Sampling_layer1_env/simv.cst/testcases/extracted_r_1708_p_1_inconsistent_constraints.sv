class c_1708_1;
    integer i = -283;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1708_1;
    c_1708_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x10z00xzxz0z01z10zz10xxx01100zxzzxxxxxzxzzxzxxzxxzzzzxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
