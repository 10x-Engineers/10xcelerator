class c_643_1;
    integer i = -641;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_643_1;
    c_643_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1001z1xx11x010z0xxzxxzzx1z1z1x0zxxzzxzxzxxzzzxxzzxzxxzzxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
