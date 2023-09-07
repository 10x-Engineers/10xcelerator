class c_586_1;
    integer i = 586;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_586_1;
    c_586_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x000z1xx1001z1zz011x0zx0xx100zzxxxxzxxzzxxzzzzzxzxzxxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
