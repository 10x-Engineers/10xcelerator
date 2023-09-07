class c_270_1;
    integer i = -268;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_270_1;
    c_270_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z1xxz0z10111xz11xxzxx0zz1z1x0zzzxzzxzxxzzxxzxxxzxzzzxxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
