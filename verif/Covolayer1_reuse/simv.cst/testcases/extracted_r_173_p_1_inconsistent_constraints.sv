class c_173_1;
    integer i = -171;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_173_1;
    c_173_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zxxz0z00x1z0x0z1xz0xxzxx1xz1xzzxzxxxzxzzxxzxxxzxzxxxxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
