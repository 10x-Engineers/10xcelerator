class c_30_1;
    integer i = -28;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_30_1;
    c_30_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1z1xx0zzxzx1x1z00xxzxx1xx110z1xxxxzzzxxxxxzxxzzzxxzzzzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
