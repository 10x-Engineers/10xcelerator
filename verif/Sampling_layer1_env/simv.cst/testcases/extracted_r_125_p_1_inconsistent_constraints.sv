class c_125_1;
    integer i = -19;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_125_1;
    c_125_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001xz11z0x0z00z100z110111110x1xxzxzxzzxzxzxzxxzzzxzzxzzxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
