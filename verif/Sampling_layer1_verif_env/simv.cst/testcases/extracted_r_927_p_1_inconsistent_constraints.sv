class c_927_1;
    integer i = -153;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_927_1;
    c_927_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx1x1x0z1z00zxxxzzxx111x1x1z10xxzzzxxzxzxzxxzxzxzzzzxxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
