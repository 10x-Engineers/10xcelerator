class c_325_1;
    integer i = 325;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_325_1;
    c_325_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0011z00xxz0z0101111zx0xx010zxzxxzzzxzxzzzzxzxxxzxxxxxzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
