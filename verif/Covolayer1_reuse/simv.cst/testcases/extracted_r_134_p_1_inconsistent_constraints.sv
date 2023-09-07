class c_134_1;
    integer i = -132;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_134_1;
    c_134_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zx01xzz0xxxz0z0x10z0xzzz0zx1zzzxxxxzxzxzxxzxxzzxzxxzzzzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
