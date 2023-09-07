class c_3296_1;
    integer i = -548;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3296_1;
    c_3296_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxx101x0x0xzz1001z10zx0z0x0x01xxxxxzxzzxxzzxxzxxxzzxxzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
