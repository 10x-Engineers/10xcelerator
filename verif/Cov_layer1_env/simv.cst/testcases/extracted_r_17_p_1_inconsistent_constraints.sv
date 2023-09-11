class c_17_1;
    integer i = -15;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_17_1;
    c_17_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0xx000xzx11x00xx0x0x00z0xz10zzxxxxzzzzxxxzxzzxxzxxzzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
