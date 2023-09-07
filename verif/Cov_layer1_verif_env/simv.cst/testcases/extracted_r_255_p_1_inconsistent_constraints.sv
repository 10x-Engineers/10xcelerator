class c_255_1;
    integer i = -253;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_255_1;
    c_255_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zz11z0xzx1zx1xxz1xz0x010010z1zzzzzzxzxzzzxzxzxzzxzxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
