class c_690_1;
    integer i = -688;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_690_1;
    c_690_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xz01zx1x0110zz1x0010xz0xz0101zxzzzzxzxxxzxxzxxzzxxxzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
