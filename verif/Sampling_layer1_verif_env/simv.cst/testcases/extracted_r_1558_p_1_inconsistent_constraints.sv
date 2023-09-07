class c_1558_1;
    integer i = -258;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1558_1;
    c_1558_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0110zxx01z0z101z0z0x001xz11zxzxzxxzzxxzzxxzzxzzxxzxxzzxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
