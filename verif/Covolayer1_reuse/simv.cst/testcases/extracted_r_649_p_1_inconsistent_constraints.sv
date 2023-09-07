class c_649_1;
    integer i = -647;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_649_1;
    c_649_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx0zxz0zzx1z01010zxzx10z0000xxxxzzzxzxzxzxxxxzxxzzxxzzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
