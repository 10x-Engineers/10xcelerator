class c_2873_1;
    integer i = -477;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2873_1;
    c_2873_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xx0xz1z110000x0111z0110x10z0xxxzzzxzzzxxxxzxxxzxxzzzzzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
