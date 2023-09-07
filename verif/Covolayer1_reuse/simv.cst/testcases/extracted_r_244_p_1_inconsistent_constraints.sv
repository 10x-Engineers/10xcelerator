class c_244_1;
    integer i = -242;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_244_1;
    c_244_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z10xz10x00zx1xzz1100011101z0xxzxzzxzxzxzzzzzzzzzxzzxxzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
