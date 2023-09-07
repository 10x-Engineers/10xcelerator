class c_656_1;
    integer i = -654;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_656_1;
    c_656_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zz0xzzz0x0z1011x000zzxz10xx1xzxxxxxzzxxxzzxzxxzzzzxzxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
