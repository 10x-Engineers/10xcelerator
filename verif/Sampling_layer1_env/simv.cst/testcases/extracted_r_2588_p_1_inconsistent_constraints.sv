class c_2588_1;
    integer i = -430;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2588_1;
    c_2588_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzzzz000x011xxx0z1x10xz11x000zzxzxxzzzxzzxzxxxzzzxxzzzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
