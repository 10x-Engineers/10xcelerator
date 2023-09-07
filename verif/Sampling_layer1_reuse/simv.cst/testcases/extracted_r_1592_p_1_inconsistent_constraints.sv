class c_1592_1;
    integer i = -264;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1592_1;
    c_1592_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1xz0111111zz1z1z0z10xzz1x1z10xxxzxzxxzzxxzzzzzxxzxzzxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
