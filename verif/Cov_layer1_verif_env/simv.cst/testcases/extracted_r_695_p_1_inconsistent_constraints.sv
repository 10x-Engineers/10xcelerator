class c_695_1;
    integer i = -693;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_695_1;
    c_695_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzxzxzxx0zx0z0z0110xxzz0xx0xx0zxzxxzzzzxxxzxzzzxzzxzxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
