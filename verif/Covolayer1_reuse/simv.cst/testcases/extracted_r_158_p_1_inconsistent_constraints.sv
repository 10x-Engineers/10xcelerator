class c_158_1;
    integer i = -156;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_158_1;
    c_158_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz11zx1x010x0z00z0zx10x0zx010zzxzxxxxxzzxxxxzzzxxxzzxxzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
