class c_473_1;
    integer i = -471;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_473_1;
    c_473_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1zz0z1zzx1zx00x0x0000zz10zz01xzzxxzzzxxzzxzzzxzzxzxzzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
