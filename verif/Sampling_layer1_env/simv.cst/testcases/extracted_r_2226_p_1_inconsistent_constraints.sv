class c_2226_1;
    integer i = -369;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2226_1;
    c_2226_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz01x0x00z100z0111xxx01z0zxxz111xxxxxzxxzzzxzzzxzxxxxxxxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
