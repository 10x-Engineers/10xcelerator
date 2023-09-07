class c_2192_1;
    integer i = -364;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2192_1;
    c_2192_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx10xxz00xz1zx1z10x0010xz1001xxxxxxxxxzzxzzxzzxzxxxzxzxxzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
