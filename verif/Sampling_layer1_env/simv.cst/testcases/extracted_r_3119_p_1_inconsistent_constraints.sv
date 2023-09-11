class c_3119_1;
    integer i = -518;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3119_1;
    c_3119_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx01z0x0zz001x0010000xz1001xz0zzzzzxzxzxzzxxzxxxzzzzxxzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
