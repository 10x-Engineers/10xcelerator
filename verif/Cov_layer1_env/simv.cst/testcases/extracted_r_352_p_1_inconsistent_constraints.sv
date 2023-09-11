class c_352_1;
    integer i = -350;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_352_1;
    c_352_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx1z00zzzx010zzz11101zxz111xx0zzzzxzzxxzzxzxzzzxzzxzxzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
