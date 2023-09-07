class c_64_1;
    integer i = -9;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_64_1;
    c_64_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx01z1xx0zxxz0x1x0zx1xxxzzz01xzxzxzxxzxzzxzxzzxzxzzxzxzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
