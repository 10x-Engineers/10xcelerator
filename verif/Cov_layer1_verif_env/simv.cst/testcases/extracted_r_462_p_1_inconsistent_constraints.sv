class c_462_1;
    integer i = -460;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_462_1;
    c_462_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzz11xzx1xxxzx110xx1z1x0x11x11xxxzzxxzzxzxzzxxxzzzzzzxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
