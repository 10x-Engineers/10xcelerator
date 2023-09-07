class c_2402_1;
    integer i = -399;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2402_1;
    c_2402_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz11001z11x0x1xx00x110x1x1000zzxxxzzxzxzzzzzzzzzzxzxxzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
