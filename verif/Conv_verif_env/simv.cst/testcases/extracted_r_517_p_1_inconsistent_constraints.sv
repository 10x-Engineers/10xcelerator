class c_517_1;
    integer i = 517;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_517_1;
    c_517_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x011101z11x1xz0z01zzz1zx100x10zxzzxxxzxxxxzzzxzxxzzxzzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
