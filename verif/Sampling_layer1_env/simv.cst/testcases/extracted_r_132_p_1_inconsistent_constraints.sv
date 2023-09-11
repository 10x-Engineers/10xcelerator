class c_132_1;
    integer i = -20;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_132_1;
    c_132_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11001xxz0xzzz010zx1xzx0zz1z00100xxxzxxzxzzxzxzzxxzxzxxzxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
