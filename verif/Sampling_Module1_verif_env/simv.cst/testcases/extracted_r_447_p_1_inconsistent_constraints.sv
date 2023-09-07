class c_447_1;
    integer i = 447;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_447_1;
    c_447_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100z111011zzzz1z10z01x1zxx10z1zxzxxzxxzxxzzxxxxxzxzzxzzxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
