class c_2692_1;
    integer i = -447;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2692_1;
    c_2692_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0x10100z0z0xxz11z1z11x111xz01xxzxzxzxxxzzxxxxzxzzzzzxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
