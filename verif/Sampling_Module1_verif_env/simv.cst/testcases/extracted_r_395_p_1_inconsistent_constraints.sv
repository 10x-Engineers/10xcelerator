class c_395_1;
    integer i = 395;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_395_1;
    c_395_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx01zxz0zzz0zz1xx1xzxz111z0zz1zzzxzzxzxzxzxxzxxzxzzxxzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
