class c_2845_1;
    integer i = -473;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2845_1;
    c_2845_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zxz1xxz1x0100x000z110zzz0zxzzxzxxzzzzxzxzzzxzxzxxxxzzxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
