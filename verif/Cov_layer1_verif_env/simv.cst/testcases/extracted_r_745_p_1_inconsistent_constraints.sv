class c_745_1;
    integer i = -743;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_745_1;
    c_745_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xz0z00z1z10z0xzzzx0z0xzx00xxxzzxzzzzzxxxzzzzzxzxxxzzxxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
