class c_201_1;
    integer i = 201;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_201_1;
    c_201_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z10x011xx10zx10zzxzx0xxzz1x1xzzxzzxxzxzxzxxzxxzxzxxzzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
