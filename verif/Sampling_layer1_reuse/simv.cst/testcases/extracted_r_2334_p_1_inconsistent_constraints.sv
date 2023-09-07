class c_2334_1;
    integer i = -387;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2334_1;
    c_2334_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0x1x1z001010z1xxzxz001zxxxx110zzzxzzxzxxzzxzzxxzxxxzzzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
