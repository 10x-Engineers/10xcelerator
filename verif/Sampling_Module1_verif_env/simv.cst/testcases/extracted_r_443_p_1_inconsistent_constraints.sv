class c_443_1;
    integer i = 443;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_443_1;
    c_443_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xzx0z01x00x1x0111xzzxzx1zzzzxzzxxzzzzxzzxzzzzxxzzzzxzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
