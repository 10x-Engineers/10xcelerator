class c_381_1;
    integer i = -379;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_381_1;
    c_381_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0101zx0zz001zz0xx01xx00z0z10z0zxzxzzxxxzxzzzzzxxzzxxzxzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
