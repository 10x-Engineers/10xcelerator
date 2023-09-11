class c_691_1;
    integer i = 691;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_691_1;
    c_691_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0z11z0111z1zxzz11011z1xx00zx0zzzzzzxxxxzzzxxxxxxxzzxxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
