class c_524_1;
    integer i = 524;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_524_1;
    c_524_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zx0z011zx11xxz00xx00x10xxx001xzxzxxzzzxxxzzzxxzxzxxxxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
