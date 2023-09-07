class c_342_1;
    integer i = -55;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_342_1;
    c_342_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zx1x01xz1001xxx1z011x11x0xxzxxzzxzzzzxxxxxxxxzzxzzzxxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
