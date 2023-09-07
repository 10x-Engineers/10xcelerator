class c_103_1;
    integer i = -101;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_103_1;
    c_103_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx0xxxx0x10xz01x0xz0100x0xxzx0xxzxzxxxxxxzxxxxzxxzxxxzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
