class c_875_1;
    integer i = -144;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_875_1;
    c_875_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz110z11z10zz100xz1z11zxx1x00xxzxxzxzxzzzxzxzxzxxzxzzxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
