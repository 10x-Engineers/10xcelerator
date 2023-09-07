class c_415_1;
    integer i = 415;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_415_1;
    c_415_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xx0z10x0zx01x1xxzxx11xx0001x1zzxzzxxxxzxxzxxxxzzzxxxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
