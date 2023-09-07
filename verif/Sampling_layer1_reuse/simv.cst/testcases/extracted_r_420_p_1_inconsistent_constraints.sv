class c_420_1;
    integer i = -68;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_420_1;
    c_420_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx0010xxxxz010z10zzzx011z1x0xzzzzxzxxzxzzzzzzzxxxxxzxxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
