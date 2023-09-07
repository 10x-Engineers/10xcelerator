class c_1743_1;
    integer i = -289;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1743_1;
    c_1743_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x001zz1x1x0xz11zxx01z0x0001x1zxzzxzxxzxxzzxzzzxxzzzxzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
