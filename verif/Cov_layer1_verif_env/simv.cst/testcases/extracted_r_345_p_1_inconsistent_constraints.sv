class c_345_1;
    integer i = -343;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_345_1;
    c_345_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01x01110x1z0x00xzxz0z0z001xz1zxzzxzxzzzxzxxzxzzxxzzxzzzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
