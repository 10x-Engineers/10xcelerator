class c_332_1;
    integer i = -330;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_332_1;
    c_332_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zzx1x1x10x00z10xz11xxxz1zxz0xzzxzzzxzzzzzxzxxzzxzzxxxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
