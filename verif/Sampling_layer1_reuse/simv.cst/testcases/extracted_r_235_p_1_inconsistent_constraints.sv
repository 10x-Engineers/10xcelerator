class c_235_1;
    integer i = -38;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_235_1;
    c_235_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1010x010zxxz1x1zz1x1zzzxxzzz1xxzxxxxzxzzxzxzzzzxzxzzzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
