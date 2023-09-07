class c_469_1;
    integer i = -77;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_469_1;
    c_469_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xxxxzz0z01110zz111z01z0xz0zxxzxxzzxzxzxzxzzzzzxzzxzzxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
