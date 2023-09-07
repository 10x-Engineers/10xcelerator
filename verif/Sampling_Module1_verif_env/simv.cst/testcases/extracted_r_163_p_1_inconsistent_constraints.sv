class c_163_1;
    integer i = 163;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_163_1;
    c_163_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzzxzzxzz0z0zxx0xx1011z1x00zx00xxzxzxzxzxzxxzzzxxzxxzzzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
