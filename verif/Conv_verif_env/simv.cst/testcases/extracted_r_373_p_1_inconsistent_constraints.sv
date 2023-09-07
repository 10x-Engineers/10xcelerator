class c_373_1;
    integer i = 373;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_373_1;
    c_373_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0110x1xx1x0x10zxx1xx1zzz0z1xzzzzxxxzxzxxzxxzxzzxxzzxxxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
