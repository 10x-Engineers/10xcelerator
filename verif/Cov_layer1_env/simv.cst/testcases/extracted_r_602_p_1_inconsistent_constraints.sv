class c_602_1;
    integer i = -600;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_602_1;
    c_602_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x11110xz0x0zz0x0xzx10x1001zxzzxzzxxxxxzxzxxzxxzzzzxxzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
