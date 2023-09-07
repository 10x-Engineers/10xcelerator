class c_685_1;
    integer i = 685;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_685_1;
    c_685_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z10001zz00xzzxxzzz000xz00xx1xzxzxxxxzzzxzxzxzxxzxxzxxzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
