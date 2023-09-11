class c_122_1;
    integer i = -120;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_122_1;
    c_122_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxzz0zz0x11111100xz0z1011010xzzxzzzzxzxzzxxzzzxzxxzzzxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
