class c_212_1;
    integer i = -210;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_212_1;
    c_212_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z1xzx1zz11z00x0x00zzxx1z0xxzxxzzzzzxzzzxzzxxzzzzzxxzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
