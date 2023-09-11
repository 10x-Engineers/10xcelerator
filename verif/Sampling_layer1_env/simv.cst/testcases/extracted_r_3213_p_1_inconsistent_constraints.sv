class c_3213_1;
    integer i = -534;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3213_1;
    c_3213_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1z01zxx000110xxzz01z0x0x0zxx1zxxxzzxzxzzxzxxzxxxxzxzzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
