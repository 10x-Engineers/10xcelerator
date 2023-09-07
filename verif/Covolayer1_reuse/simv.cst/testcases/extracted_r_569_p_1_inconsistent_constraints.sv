class c_569_1;
    integer i = -567;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_569_1;
    c_569_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001x00x0zz0zxxzz1z10xx10x0x0z1x1zxzzxxzzzzxxxxzxxzxzzxzxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
