class c_599_1;
    integer i = -597;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_599_1;
    c_599_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx10z0zx1zzz10x00x010x0z11zx11z1zzzxzzxzxzxzxzxzzzzxzxzxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
