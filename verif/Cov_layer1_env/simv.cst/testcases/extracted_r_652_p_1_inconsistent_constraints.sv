class c_652_1;
    integer i = -650;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_652_1;
    c_652_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xxx11zz10z01zzz1011zzz1x1xxxz0zxzzxzxxzzzzzzzxxxxxzzzxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
