class c_2447_1;
    integer i = -406;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2447_1;
    c_2447_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zxx0z00zx0xzxxzz1100101z1z1x0xzzxzxzxxzzzxzxxzxxxzzxxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
