class c_722_1;
    integer i = 722;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_722_1;
    c_722_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xzxxx1x10xzxzxx00zxz1zx10z111xzzxxxzxxzzzzxxzxzxzzzzxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
