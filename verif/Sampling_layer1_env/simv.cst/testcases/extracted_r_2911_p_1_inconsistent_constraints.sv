class c_2911_1;
    integer i = -484;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2911_1;
    c_2911_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11x1x0xx1z0xx0zx0zxx101000z111xxxzxxxzzzzxzxzzxxzzxxxxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
