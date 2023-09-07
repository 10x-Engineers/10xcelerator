class c_218_1;
    integer i = 218;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_218_1;
    c_218_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0zxxx1zzzz0zxxx0zz1x1xx1z110xxzxxzxzzzxzzzzxxzxzxzxzzzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
