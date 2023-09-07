class c_1581_1;
    integer i = -262;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1581_1;
    c_1581_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xx1z10xz10001x1x11101z0x01100zxzzxzxzzxzzzzxzxxzxzxxzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
