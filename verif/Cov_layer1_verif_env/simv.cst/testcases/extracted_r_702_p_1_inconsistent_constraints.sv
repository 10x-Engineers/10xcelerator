class c_702_1;
    integer i = -700;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_702_1;
    c_702_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x1z100z1xx01xz0011zzz01000x0xzxzzzxzzxzxxxxzxxzzzxzxzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
