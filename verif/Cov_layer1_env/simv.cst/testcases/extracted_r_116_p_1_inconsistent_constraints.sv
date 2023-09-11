class c_116_1;
    integer i = -114;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_116_1;
    c_116_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100z111zxz11zxzx00x0xzxx1zx1x1x1zzxzxzzzzxzzxxzzxxxxzzxxzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
