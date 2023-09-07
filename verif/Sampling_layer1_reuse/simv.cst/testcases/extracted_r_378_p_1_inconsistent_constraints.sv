class c_378_1;
    integer i = -61;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_378_1;
    c_378_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx01001xz10zz000zxzx1x11z0zz01zzzxzxxxzxzxxzxzxzzxzxzxzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
