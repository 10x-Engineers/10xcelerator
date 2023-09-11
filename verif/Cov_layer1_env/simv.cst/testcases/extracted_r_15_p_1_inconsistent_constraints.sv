class c_15_1;
    integer i = -13;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_15_1;
    c_15_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xx1zxz1zz001xxx11x1001x011zxz1xzzxxxzxxxxxxxxzzzxxxzxxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
