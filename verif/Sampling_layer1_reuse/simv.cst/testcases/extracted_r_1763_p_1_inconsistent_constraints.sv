class c_1763_1;
    integer i = -292;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1763_1;
    c_1763_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1010zz0x1zxz100x0zz10xxxzx01zxzxzzxzzxzzzxzxzxzxzxxxzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
