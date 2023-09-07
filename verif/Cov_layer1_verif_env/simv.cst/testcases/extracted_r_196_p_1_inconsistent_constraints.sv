class c_196_1;
    integer i = -194;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_196_1;
    c_196_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x10x11000xz1x1z1x0zzzxzz10101zxxzzxxzzxzzzxzzxxxxxzzxxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
