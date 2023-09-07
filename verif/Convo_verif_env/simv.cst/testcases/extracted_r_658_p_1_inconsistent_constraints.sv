class c_658_1;
    integer i = 658;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_658_1;
    c_658_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001xz1xzz1x0xx1z0xzzx1zz111x1x0xzxxzzzxxxxzzxzzxxxzzzzzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
