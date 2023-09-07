class c_138_1;
    integer i = -21;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_138_1;
    c_138_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxxzxzxzx0xzz100zz0xzzzz011z00zxxzxzxzzzzzzxzzzxzzzxzxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
