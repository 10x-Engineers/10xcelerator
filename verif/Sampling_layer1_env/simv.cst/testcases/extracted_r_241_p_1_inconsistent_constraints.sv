class c_241_1;
    integer i = -39;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_241_1;
    c_241_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxx1z1x011010x000z0zxx10z01zx0xxxzxxxzzxzzxzxxzzzzzzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
