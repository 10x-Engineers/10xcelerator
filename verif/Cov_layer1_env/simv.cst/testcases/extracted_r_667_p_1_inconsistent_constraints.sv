class c_667_1;
    integer i = -665;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_667_1;
    c_667_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0zz0x00z00z1zxz1zzz0xz1x1xzx1xxxxxzzxzxxzzxzzxxxzzzzxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
