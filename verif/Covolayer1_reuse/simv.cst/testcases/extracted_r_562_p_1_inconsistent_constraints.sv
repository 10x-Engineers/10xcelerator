class c_562_1;
    integer i = -560;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_562_1;
    c_562_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx1110zz0z1011zxz0x10zxz0x101zxzxxxzxzzzzzxxzzxxxxzzzxxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
