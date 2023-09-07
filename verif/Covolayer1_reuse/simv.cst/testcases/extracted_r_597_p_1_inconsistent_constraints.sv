class c_597_1;
    integer i = -595;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_597_1;
    c_597_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx010010xzx0zzz00zzxz11110z0xx0zzxxxxzxzxxzxzzxxxzxzxzxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
