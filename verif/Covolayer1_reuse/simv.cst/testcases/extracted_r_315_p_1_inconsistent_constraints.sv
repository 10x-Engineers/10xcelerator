class c_315_1;
    integer i = -313;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_315_1;
    c_315_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000zzxzx1zx0001xz0zz0100z11x1x1zzxzzzzzxzzxzxzzzxzxxxxzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
