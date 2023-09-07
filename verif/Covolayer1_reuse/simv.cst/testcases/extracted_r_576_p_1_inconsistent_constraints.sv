class c_576_1;
    integer i = -574;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_576_1;
    c_576_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1z1z00x11zx1x1x00000zzx11110zzzzzzzzzxxxzzzzzzxxzxxzzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
