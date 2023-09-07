class c_2033_1;
    integer i = -337;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2033_1;
    c_2033_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xzz0100z00zz1xzxz10z01100z111xxzxzzzzzxzzxzzzzzxxzzzzzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
