class c_315_1;
    integer i = 315;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_315_1;
    c_315_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0zzxxxzx11zzzx10xxx11x0xzxxx1xzzzzzzxzzxzxxxxzzxzzxxzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
