class c_2037_1;
    integer i = -338;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2037_1;
    c_2037_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxz1zxzz000x0xxxzxxzzzx1x0xxx0zzzzxxzzzxzzxzxzxzxzzxzxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
