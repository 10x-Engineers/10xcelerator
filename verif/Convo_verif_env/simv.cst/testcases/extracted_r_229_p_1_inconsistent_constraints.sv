class c_229_1;
    integer i = 229;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_229_1;
    c_229_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz00x0xx10z000x0z100z1z1xx101xzxzzxxxxzzxzxzxzxxxxxzxzxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
