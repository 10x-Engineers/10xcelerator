class c_2605_1;
    integer i = -433;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2605_1;
    c_2605_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111010zz1zz0z0xxzxx0xzxx0xzzzxxxzxzxxxxzxzxxzzzxzxzzxzzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
