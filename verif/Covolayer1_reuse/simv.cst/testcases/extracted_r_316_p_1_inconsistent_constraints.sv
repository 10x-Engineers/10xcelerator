class c_316_1;
    integer i = -314;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_316_1;
    c_316_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01zz1z00xxzx10zzx1z000zx1z10z0xzzxxxzzxzxxxzxxxxxzzzxzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
