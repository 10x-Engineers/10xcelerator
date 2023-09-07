class c_756_1;
    integer i = -124;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_756_1;
    c_756_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzx1zx01zzzx0xx1x111x10xzzz11zxxzxxxxzzzzzxzxxxzxzxzzzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
