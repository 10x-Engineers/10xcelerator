class c_713_1;
    integer i = 713;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_713_1;
    c_713_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zx0xxz0010100zxz1xzz00x0x0x0zxzzzzxzxzxzxxxzzzxzxxxxxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
