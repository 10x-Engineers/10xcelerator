class c_304_1;
    integer i = -302;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_304_1;
    c_304_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x10zzz0x001101z0x1x0x10zzx1z000zxxxzzzzzzxzxzzzzzzxxzzxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
