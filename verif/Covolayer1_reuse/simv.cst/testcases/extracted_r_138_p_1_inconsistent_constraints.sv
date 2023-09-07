class c_138_1;
    integer i = -136;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_138_1;
    c_138_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx010xz1z11xz0xx00xz1zxzxzz0zx0xxzxzzxzzxzxxzxzzzzzzzxxzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
