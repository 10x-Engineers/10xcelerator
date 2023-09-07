class c_326_1;
    integer i = -53;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_326_1;
    c_326_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx110xx0zz001zz00x0x1z010z0z11x0zxxxxzxxzxzxzxxzxxzzxzxxzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
