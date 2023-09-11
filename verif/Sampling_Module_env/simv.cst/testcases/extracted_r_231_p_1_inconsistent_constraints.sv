class c_231_1;
    integer i = 231;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_231_1;
    c_231_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01xxx1xx10z10zxzzzx1zz1x1zz101xxxxxzzxzzxzxzxzxzzxxxxzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
