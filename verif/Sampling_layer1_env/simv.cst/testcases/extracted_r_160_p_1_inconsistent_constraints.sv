class c_160_1;
    integer i = -25;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_160_1;
    c_160_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00010z1z0x011z1x0x0xx01z0z0xzzxxxzxxzzzxxxxxxxzxxxxzzxzxxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
