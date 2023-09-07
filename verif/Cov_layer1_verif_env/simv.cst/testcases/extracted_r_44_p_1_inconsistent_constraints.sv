class c_44_1;
    integer i = -42;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_44_1;
    c_44_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1xz0001xz0zx001zxz10zz00xz1zxzxzxxxzzxzzzxzzzxzzzzxzxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
