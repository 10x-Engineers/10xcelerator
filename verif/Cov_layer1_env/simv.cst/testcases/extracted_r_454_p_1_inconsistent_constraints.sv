class c_454_1;
    integer i = -452;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_454_1;
    c_454_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxz1zz10x1z00xz0x1x00111zzz01xxzxzxzzxxzzxxzxzzxzxzxxxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
