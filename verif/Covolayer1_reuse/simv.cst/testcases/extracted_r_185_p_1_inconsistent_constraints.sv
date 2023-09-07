class c_185_1;
    integer i = -183;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_185_1;
    c_185_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z001111xxx1zx00z101z110xz0z0zzzxxzzxxzzxxzxzxxzzzxxxxxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
