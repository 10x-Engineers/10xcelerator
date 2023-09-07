class c_740_1;
    integer i = 740;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_740_1;
    c_740_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxzz011xxz10xz00zx1xz0z100110zzzxzzxzzxxzzxzzzzxzzxxzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
