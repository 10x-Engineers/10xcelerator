class c_199_1;
    integer i = -197;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_199_1;
    c_199_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx1xz101zzz010z0xxx0z0xxzzz10xxxzzxxxzzxzzxxxzxxzxxxzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
