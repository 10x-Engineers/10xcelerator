class c_315_1;
    integer i = -51;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_315_1;
    c_315_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xzzzxxx1xxz11z1zzzxzzxz1xxz0zzxxxxxxzzxxxxzxzzzxxzxzxzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
