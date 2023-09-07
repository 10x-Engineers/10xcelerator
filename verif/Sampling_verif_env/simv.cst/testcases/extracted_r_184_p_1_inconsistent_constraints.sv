class c_184_1;
    integer i = 184;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_184_1;
    c_184_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0001xxz00zxz1z00xx0zx1xzx10zxzzxzzxzzxzxzzzxxxzxxxxzxxxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
