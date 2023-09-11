class c_281_1;
    integer i = 281;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_281_1;
    c_281_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00x001010xzxxz1xx0z10xz1xzz000zxzzxzxxxzzxxxzxzzzxxxxzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
