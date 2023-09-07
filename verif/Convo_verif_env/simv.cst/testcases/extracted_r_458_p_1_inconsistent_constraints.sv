class c_458_1;
    integer i = 458;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_458_1;
    c_458_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzz01zx11z0z10xxz111zz10xzz10zxzxzxzzxzzxzxzxxxxzxxxzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
