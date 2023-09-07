class c_756_1;
    integer i = -754;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_756_1;
    c_756_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0xx1x0zzx100z0zz0001x01z0z1zzzxxzxzxxxxzxxzzxzzxxzzzzxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
