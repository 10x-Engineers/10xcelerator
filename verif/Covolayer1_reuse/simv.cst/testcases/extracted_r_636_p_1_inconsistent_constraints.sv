class c_636_1;
    integer i = -634;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_636_1;
    c_636_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1100z00x010100zx1z1zxz0x0xx0000xzzzxxxzzzxxzzzzxxxxzxzzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
