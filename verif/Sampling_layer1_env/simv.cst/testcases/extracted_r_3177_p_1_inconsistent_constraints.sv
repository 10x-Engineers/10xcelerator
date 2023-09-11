class c_3177_1;
    integer i = -528;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3177_1;
    c_3177_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100z0zz01zz110z0z01x00z0z0xx1x1xxzzzxxxxzzxxzxxxxxxxxxzzxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
