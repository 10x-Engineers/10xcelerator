class c_565_1;
    integer i = -563;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_565_1;
    c_565_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0100z1001zxxzzxzzz1z1z111xz1111zzzzxzzzzzxxzzxzxzxzxxzxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
