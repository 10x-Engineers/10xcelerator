class c_313_1;
    integer i = -311;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_313_1;
    c_313_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011110xz1x00xzz1z1xzz0001100x1x0zzxzzxxxxzxzzxzzzzzxzxzzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
