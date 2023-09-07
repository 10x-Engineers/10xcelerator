class c_2701_1;
    integer i = -449;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2701_1;
    c_2701_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0x0111zxxz1zxzxzxxzxzz10x1x01xxzzzzzzzxzxxzxzzxxzzzzxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram