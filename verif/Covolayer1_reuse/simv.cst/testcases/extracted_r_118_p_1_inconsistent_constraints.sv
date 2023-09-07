class c_118_1;
    integer i = -116;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_118_1;
    c_118_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01xxx0xzx00x000x1xx00zxxzz0zzxzxzzzzzxzzxxxxzzzxzxzxzzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
