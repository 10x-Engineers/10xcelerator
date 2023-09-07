class c_445_1;
    integer i = 445;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_445_1;
    c_445_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzxx0z1z0z100zzxx1z011x11x000zzxxzxxzzxxxzxxzzxzzxxxzxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
