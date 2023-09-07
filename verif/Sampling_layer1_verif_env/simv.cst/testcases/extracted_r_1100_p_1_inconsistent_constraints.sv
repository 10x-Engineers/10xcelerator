class c_1100_1;
    integer i = -182;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1100_1;
    c_1100_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx11z1z11zxx0001111z10xzx0100zxzxzxzzxxxxxzzzxxzzzzzxxzxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
