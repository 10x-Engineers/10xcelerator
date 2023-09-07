class c_1666_1;
    integer i = -276;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1666_1;
    c_1666_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z00zx0x0x1zx10x01z11xz00xxxzxxzzxzzzzzzzzxzzxxxxzzzxzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
