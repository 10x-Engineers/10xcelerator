class c_525_1;
    integer i = 525;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_525_1;
    c_525_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zzzz00x1101xz1xzxxz11010zxzzxxxzxxzxzxxzzzxxzzzxxzxxxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
