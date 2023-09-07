class c_632_1;
    integer i = 632;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_632_1;
    c_632_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz11z00z0x0xzzx00xz1zxxxzx1zz11zzzxxzzzzxxxxxxzxzzxzzxzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
