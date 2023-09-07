class c_87_1;
    integer i = 87;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_87_1;
    c_87_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz00x00xzx0zzzx00x0zzxzzzxz1zz1xxzxzzxzzxxzzxxzzzxxzzxzxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
