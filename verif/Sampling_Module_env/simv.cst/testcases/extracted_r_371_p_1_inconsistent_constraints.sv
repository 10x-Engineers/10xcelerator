class c_371_1;
    integer i = 371;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_371_1;
    c_371_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z1z0101zz0zxx0xxx00zzz0z11x1xzzzxxxxxzxxzzzxxzxxxxzzxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
