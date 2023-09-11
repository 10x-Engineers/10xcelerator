class c_1112_1;
    integer i = -184;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1112_1;
    c_1112_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx0xxz0001zz0zzzz1x0z0011zzzz1xxxxxxzxxzxxzzxxxxzzzzzxxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
