class c_273_1;
    integer i = -271;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_273_1;
    c_273_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx110xzz1zzzx000z10x1x110zx10zzzzzxxzzzxzxxxzzxzzxxxzxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
