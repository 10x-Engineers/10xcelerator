class c_321_1;
    integer i = -52;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_321_1;
    c_321_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0zxzzx0xz10xzz10zzzx0xzzx0x10zxxzzzxzxxzxzzzxzzxxzzxxxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
