class c_542_1;
    integer i = -540;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_542_1;
    c_542_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0zz11z0x0x011101x01011xx0000z0zxzzxzzxzxzxxzxzxxzzzzxzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
