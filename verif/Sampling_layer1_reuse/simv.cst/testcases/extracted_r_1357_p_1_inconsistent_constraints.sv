class c_1357_1;
    integer i = -225;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1357_1;
    c_1357_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx01xx1zxzzz10x00zx0111xzz011xzzxxxzxzxzzzxxzzxzzxxxzxxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
