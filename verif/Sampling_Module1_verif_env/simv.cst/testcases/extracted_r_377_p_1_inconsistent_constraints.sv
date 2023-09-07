class c_377_1;
    integer i = 377;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_377_1;
    c_377_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx01x0zxzx1000000zxx1011xxxzz00zzzzxxzxxxxzzzzxzzzzxzzzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
