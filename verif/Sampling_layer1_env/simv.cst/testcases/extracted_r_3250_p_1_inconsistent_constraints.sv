class c_3250_1;
    integer i = -540;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3250_1;
    c_3250_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000z1001zxxz0zxzz11101111x1xxxxzxzzzxxxxzzzxzxzxzzzxxzxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
