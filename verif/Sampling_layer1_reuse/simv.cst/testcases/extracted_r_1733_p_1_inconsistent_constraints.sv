class c_1733_1;
    integer i = -287;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1733_1;
    c_1733_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1101110x0x0xz000z00zz0z10010x0xxxxzzxzxxzxzxxzxzzxxxzzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
