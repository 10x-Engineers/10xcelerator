class c_120_1;
    integer i = -118;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_120_1;
    c_120_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001zzxz1x0xz0zzxzzz1z11zxzz1000xxzzzxxxzxxzxzzzxxxxzzxzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
