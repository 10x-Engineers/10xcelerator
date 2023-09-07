class c_402_1;
    integer i = -65;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_402_1;
    c_402_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0x0xx01x11zx00xxx00xx001x110xxzzzxzxzxxxzzxxzxxzzzzxxxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
