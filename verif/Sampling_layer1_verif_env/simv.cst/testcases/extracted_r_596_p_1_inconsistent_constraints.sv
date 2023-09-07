class c_596_1;
    integer i = -98;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_596_1;
    c_596_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x011xxz0xzzz0100110zz11z0zx1xxxzzzzxxzzxxzzzxzxxxxzxxxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
