class c_723_1;
    integer i = -721;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_723_1;
    c_723_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz01xz0zz111xz0000z1x0xz0zz11zzxxxzzzxxxzzzzzzxzzxzzzzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
