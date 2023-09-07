class c_343_1;
    integer i = -341;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_343_1;
    c_343_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z0z01xzxzzzx1x0x11x0xz0xz10z1xzzxxxzxzxzzxzzxxxxzxzzxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
