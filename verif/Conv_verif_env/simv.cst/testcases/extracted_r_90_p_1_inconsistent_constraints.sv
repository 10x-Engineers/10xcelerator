class c_90_1;
    integer i = 90;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_90_1;
    c_90_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x10xz01x10z1x1zx10x1zx1xx1110xzzzzzxxxzxxzxxxxzzxzzxzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
