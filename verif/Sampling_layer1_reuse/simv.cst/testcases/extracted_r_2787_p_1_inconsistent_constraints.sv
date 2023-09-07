class c_2787_1;
    integer i = -463;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2787_1;
    c_2787_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz11x100zx0x110xx00101xxz0x11xxxzxzzxzzxzxzzxzzxxzxxzzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
