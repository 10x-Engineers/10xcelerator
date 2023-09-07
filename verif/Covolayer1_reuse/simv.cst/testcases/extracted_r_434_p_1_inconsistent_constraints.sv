class c_434_1;
    integer i = -432;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_434_1;
    c_434_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010100zzx11z1xx1x01100zxz0x1001xzzxzzzxxzzxzzzzzxzxzzzxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
