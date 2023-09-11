class c_737_1;
    integer i = -121;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_737_1;
    c_737_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11z0x110x00x0xxzxz0xx1zz01z1011xzxzxzxxzzzzxzxxxxzxxzzzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
