class c_642_1;
    integer i = -105;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_642_1;
    c_642_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz10x1z010100x0101xx0001z1100xzzzxzxxzzzxzxxzzzzzxxzzxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
