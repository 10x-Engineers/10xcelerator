class c_707_1;
    integer i = -705;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_707_1;
    c_707_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx00zx0z011xz1xz00zxxz1zz1x1xz1zzxzxxzzzzxxxzxxzxxzzxxzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
