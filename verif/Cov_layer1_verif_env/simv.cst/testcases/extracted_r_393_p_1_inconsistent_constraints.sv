class c_393_1;
    integer i = -391;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_393_1;
    c_393_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz00x1100xxz00zz1xz0zzzx10000zzxzxxzzxxxxxxxzxxzxzzxxzzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
