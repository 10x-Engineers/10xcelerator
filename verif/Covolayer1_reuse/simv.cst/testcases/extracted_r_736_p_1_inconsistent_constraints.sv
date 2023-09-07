class c_736_1;
    integer i = -734;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_736_1;
    c_736_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z0xz1zx010x101z0zz0zz01000xxzzxzxxzzxzxzzxxxxxxzxxxzzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
