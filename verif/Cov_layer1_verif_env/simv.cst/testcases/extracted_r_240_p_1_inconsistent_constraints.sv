class c_240_1;
    integer i = -238;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_240_1;
    c_240_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z100xz111zx1000zz00x1xz10z0z0zzzzzzxxxzxxxzzxxzxxzxzzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
