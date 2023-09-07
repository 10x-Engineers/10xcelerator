class c_375_1;
    integer i = -373;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_375_1;
    c_375_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11011z1x10z1xx1x1z111011zzxz1z0zzzzzxxxzzxxzzxxxxzzzxxzxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
