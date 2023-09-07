class c_124_1;
    integer i = -19;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_124_1;
    c_124_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100zx0zx10z00z1x1000zzzx10z1x0xzzxzxzxzzxzzxxzxxxzxzzzxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
