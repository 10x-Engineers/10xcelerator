class c_351_1;
    integer i = 351;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_351_1;
    c_351_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxx011x1zz011z0xx0z0x1z110011xxzxzzxzxzzxzxzxzzzxxxxzxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram