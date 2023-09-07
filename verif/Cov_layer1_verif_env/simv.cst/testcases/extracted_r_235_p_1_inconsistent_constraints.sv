class c_235_1;
    integer i = -233;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_235_1;
    c_235_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzxz1xz10z10x0xz1x00xzx10110xx1zzxxzzxzzxxxxxzzzxxzzzzxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
