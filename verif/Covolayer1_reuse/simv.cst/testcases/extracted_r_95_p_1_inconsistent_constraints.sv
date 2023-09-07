class c_95_1;
    integer i = -93;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_95_1;
    c_95_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxzz0x111100z1xx1zzzz1zx1z10zz0xzzzxxzzxzzzzzzxxzzzxxzxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
