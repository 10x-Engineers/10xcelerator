class c_721_1;
    integer i = -719;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_721_1;
    c_721_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xz1xx0zx000x1zxxxz0x0xx1zzz1xzzxzxxzxxzzxzxxxzxzzzzxzzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
