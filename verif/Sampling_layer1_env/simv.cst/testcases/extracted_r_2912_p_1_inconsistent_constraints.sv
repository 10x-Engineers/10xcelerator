class c_2912_1;
    integer i = -484;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2912_1;
    c_2912_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0xxzxx0zz110zxx001z10z11z0zx0zxzxxzzzzzxzxxxxxzzzxxxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
