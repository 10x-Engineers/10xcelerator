class c_2785_1;
    integer i = -463;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2785_1;
    c_2785_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx0100xx10z10xzx0x110x0x0xx10zzzxzzxzxzxzxzxzxxxzzxzzxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
