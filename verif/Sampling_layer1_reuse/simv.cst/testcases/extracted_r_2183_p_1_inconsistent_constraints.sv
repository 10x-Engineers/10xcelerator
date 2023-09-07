class c_2183_1;
    integer i = -362;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2183_1;
    c_2183_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zzxz01x00z11z000zzxx100zxxzzxzxxzzzzzxzxxzxzxzxzxzzxzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
