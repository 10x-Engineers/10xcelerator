class c_153_1;
    integer i = -151;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_153_1;
    c_153_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz0xx100x0z1x0z0000xz01zx0zzx0xxzxxxxzzxxxxxxzxxxzxzxxxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
