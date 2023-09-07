class c_335_1;
    integer i = 335;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_335_1;
    c_335_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x1xx1xzzz1zz001x0xzzz00x1z0z1zzzxxzxxzxzzxxzzxzzzzxxzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
