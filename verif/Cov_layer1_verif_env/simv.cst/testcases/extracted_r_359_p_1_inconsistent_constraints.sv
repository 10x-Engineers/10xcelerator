class c_359_1;
    integer i = -357;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_359_1;
    c_359_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0z000x00z0xx0xx0z0z1xzz1zxzx1xxzzxxxxzzxxxzxxzxxxxxzxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
