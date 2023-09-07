class c_533_1;
    integer i = -531;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_533_1;
    c_533_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001000x0z101x0z110x0xx0z10xz0x1zxzxzxxzzxzzxxxxzxzzzzxxzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
