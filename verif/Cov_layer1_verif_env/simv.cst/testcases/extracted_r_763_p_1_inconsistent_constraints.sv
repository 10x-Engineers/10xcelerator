class c_763_1;
    integer i = -761;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_763_1;
    c_763_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0x01zz1101z10z1zx1x100xz0z00zzzzxxxzzxzzxxxxzxxzxzxxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram