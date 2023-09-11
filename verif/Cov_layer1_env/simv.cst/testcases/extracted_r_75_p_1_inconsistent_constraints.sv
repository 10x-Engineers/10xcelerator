class c_75_1;
    integer i = -73;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_75_1;
    c_75_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x0xxx1xxz01011xz0z0z0zz0z0001zxxxzzxzxzxxxxxzxxxxxxzzzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
