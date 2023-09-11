class c_666_1;
    integer i = -664;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_666_1;
    c_666_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11011111zz1xz01xzzxzzz1z0010x0zxzzxzxxxxzxxxxzzzxxzxzxxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
