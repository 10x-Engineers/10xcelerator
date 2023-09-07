class c_575_1;
    integer i = -573;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_575_1;
    c_575_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001x00zx0z10xzxx10zx0x11x101100zzxxzzxzxzzzxzzzxxxxzzxxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
