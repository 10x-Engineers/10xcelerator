class c_295_1;
    integer i = -293;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_295_1;
    c_295_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z100100z0xx1x01zz0x11z0zzzzxz1xzxzxzxzzzzzxzxzxxxzxzxzxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
