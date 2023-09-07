class c_421_1;
    integer i = -419;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_421_1;
    c_421_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z10zz1x0z1x1zz1xzzxz10x1xxx0xzzzzxxxxxzxxxxzxxxzzxzzxxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
