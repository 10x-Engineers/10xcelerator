class c_440_1;
    integer i = -438;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_440_1;
    c_440_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz1110xxxx1z1zxzzxx0zx1x0x10zxxxzxxzzxxzzzxzxxxxzzxxzzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
