class c_713_1;
    integer i = -117;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_713_1;
    c_713_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxz1xx100xz1x00zxx1001x0xxzz01zxxxxzzxzxzzxxxzxxzxxzzxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
