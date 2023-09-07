class c_506_1;
    integer i = -504;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_506_1;
    c_506_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10zzz1z011zx0xzz1110z011x100z0xzxxzxxxzzxzxxxxzxzzxxxzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
