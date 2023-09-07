class c_768_1;
    integer i = -766;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_768_1;
    c_768_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1xzz101z00zz00zx0000z0z1000xxzxxxxzxzzzzzzxzxzzxxzzzxxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
