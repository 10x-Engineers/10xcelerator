class c_2098_1;
    integer i = -348;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2098_1;
    c_2098_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0100000z111xzx0z00zz010z00zx0xzzxzzxxzzxzxxxxzzxxzxxxxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
