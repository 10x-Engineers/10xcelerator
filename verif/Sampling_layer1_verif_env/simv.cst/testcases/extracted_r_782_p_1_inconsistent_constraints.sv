class c_782_1;
    integer i = -129;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_782_1;
    c_782_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z111x10zz0110zx00xz101z10x111xzzxzzzzzzxzzzzzxzxxxxzzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
