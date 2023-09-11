class c_333_1;
    integer i = -331;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_333_1;
    c_333_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1xzz111x0x0z0zz0z01000xx0z11xxxzxzxxxzxxxxzzzxxxxxzxxxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
