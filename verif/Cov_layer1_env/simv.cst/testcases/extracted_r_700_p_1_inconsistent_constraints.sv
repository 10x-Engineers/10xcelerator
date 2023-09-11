class c_700_1;
    integer i = -698;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_700_1;
    c_700_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1x01xzxz0100z0zzx000xxxxx10zzzxzxzzzzxxzxxzzxzzzxxxxzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
