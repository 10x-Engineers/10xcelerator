class c_774_1;
    integer i = -772;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_774_1;
    c_774_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x10x010x1xxzz1x1z00111x1zx1x0zzxzzzxzxxxxxxzzzxzzzxzzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
