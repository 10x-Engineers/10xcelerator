class c_838_1;
    integer i = -138;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_838_1;
    c_838_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x111z111zxz1z000z00xzz00zx1x00xxzzzxzzxxxzzxxxxxzxzzzzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
