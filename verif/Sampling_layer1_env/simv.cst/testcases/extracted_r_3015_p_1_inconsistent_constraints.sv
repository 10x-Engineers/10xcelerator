class c_3015_1;
    integer i = -501;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3015_1;
    c_3015_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z11xxz1xzxxz100zxxz1xz100xz0xxzxzzxxzzxzzxzxxzxxxxxzzxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
