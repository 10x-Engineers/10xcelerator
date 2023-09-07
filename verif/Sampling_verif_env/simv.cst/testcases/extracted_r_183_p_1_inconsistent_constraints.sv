class c_183_1;
    integer i = 183;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_183_1;
    c_183_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1z11001x11x10xx00x1zzx00x100zxzxzxzzxzxxxxxzxxxzxzxzxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
