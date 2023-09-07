class c_1931_1;
    integer i = -320;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1931_1;
    c_1931_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x10x0011zz11z1100xx110x100zxxxxxzxxxzzxzzzxxxxxzxxxxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
