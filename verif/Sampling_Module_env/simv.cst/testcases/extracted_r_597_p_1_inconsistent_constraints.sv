class c_597_1;
    integer i = 597;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_597_1;
    c_597_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxxz1010110z001000x1z00xxx1x10zzzxxzxzzxxzzzzzxxzzxxzzxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
