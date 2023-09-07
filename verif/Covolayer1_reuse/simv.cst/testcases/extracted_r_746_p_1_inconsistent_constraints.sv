class c_746_1;
    integer i = -744;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_746_1;
    c_746_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x0x0011zz111x00xz1x10z0x1x1x0xxzzzzzxzxzxxxzxxxxxzzxzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
