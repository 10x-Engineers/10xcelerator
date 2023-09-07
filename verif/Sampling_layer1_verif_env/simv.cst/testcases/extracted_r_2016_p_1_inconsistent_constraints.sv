class c_2016_1;
    integer i = -334;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2016_1;
    c_2016_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00xz01x1000xz1zzzxx0x0zxx0xz0xzxxxxxxxxzzzxzxxzxxxxzzxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
