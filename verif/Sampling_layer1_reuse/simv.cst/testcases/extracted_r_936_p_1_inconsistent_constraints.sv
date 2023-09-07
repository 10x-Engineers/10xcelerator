class c_936_1;
    integer i = -154;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_936_1;
    c_936_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000011x011x1x000xz11xx00z111x1xxxxzxzxxxzzxxxxzxzxxzxzzxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
