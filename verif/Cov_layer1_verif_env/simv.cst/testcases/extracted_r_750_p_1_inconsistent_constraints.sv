class c_750_1;
    integer i = -748;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_750_1;
    c_750_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx00xx010zzxxx1001111010z1zzx1xxzzzxzzzxxxxzzzxzxzxzxzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
