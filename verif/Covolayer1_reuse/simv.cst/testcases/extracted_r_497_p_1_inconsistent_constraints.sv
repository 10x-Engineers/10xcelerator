class c_497_1;
    integer i = -495;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_497_1;
    c_497_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzxx1z0x1z1xx0zxzz101x01zxxz01xzxzxxxzxzxzzzxzzxzzxxzzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
