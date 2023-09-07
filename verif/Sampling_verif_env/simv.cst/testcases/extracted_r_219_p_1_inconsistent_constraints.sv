class c_219_1;
    integer i = 219;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_219_1;
    c_219_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xxx00z10111x1z010x0xz0zzxx1x0xxxxxzxzzzzxzxxxxzxxzzxzxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
