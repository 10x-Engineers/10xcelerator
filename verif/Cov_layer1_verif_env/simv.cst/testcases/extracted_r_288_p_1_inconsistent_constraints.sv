class c_288_1;
    integer i = -286;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_288_1;
    c_288_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0010x0100x1z00zxx1xz0zx01x00x0xzzzzxzzxzzzzzzxzxzxxzzzzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
