class c_2000_1;
    integer i = -332;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2000_1;
    c_2000_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110100z111z00x1x0zz110z0xx110011xzxxxzzxzxzxzzzxzzxzzxzzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
