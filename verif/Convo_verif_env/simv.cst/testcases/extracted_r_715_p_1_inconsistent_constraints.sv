class c_715_1;
    integer i = 715;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_715_1;
    c_715_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x00x111xxz1x1z00zx111011xz0x10zxxxxzzzxxzzzxzxzzzxzzxxzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
