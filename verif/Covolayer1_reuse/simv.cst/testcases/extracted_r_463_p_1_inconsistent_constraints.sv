class c_463_1;
    integer i = -461;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_463_1;
    c_463_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zx1100xz0x10zz1zzzzx0x1x1zx0zxzzzzzzxxzzzxxzzxzxzxxzzxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
