class c_19_1;
    integer i = -17;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_19_1;
    c_19_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101z110xz0z0zx1100zzz00z01xx0x0xxxzxxzxzxxxxzzzzxzzxxxxxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
