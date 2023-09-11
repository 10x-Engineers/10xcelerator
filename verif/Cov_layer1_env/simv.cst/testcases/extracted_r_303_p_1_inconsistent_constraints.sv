class c_303_1;
    integer i = -301;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_303_1;
    c_303_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1z0110z1110x1zzz0100xxz10x1zzxxxzxxzzzxxzxxxzxzxxxxxxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
