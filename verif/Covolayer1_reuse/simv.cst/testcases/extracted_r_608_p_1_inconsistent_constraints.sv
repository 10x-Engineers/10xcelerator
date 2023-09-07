class c_608_1;
    integer i = -606;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_608_1;
    c_608_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1xx10z1z010x1z10xz1zz1zz11zx0zxzxxzxxxxzxxxzzzzxxxxxxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
