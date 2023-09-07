class c_2223_1;
    integer i = -369;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2223_1;
    c_2223_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxx0xz1z10zx0zx0xx11x0zxx1zx01zzzxzzxxxxzxzxxxzzzzxzxxxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
