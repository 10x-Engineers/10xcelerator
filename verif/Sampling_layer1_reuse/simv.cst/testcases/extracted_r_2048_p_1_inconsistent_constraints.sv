class c_2048_1;
    integer i = -340;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2048_1;
    c_2048_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x100z1z01z11101z11x1z0xzxzxxxxzzzxxxxxxxxxxxxzzxzxzxxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
