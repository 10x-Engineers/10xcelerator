class c_423_1;
    integer i = -421;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_423_1;
    c_423_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz11x10x1z1z1z0z0x0z0x0xx1zzx01zzxzxzxxzxzxzzxzzzzxzxzxzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
