class c_487_1;
    integer i = 487;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_487_1;
    c_487_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x1xz1z1x0x0x1z0zxz00xz0xxx110zxxxxzxxxzzxzxxxxzzzzzzxxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
