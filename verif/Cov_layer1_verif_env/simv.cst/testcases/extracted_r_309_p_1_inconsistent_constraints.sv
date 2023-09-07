class c_309_1;
    integer i = -307;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_309_1;
    c_309_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z1xz1z01zxzxxz0x0z00xzxzx0110zzzzxxzzzzzzxzzxxzzxxzxxzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
