class c_205_1;
    integer i = -203;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_205_1;
    c_205_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xx1zxzzxz1111z10x1xz001z0z101zxzzxxxzzzxzzzzxzxzzxxxzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
