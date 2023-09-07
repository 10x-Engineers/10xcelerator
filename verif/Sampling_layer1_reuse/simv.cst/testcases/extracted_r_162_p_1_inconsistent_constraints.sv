class c_162_1;
    integer i = -25;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_162_1;
    c_162_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0100x011xzzxz001z10001x01x10xxzzzzxxzzxxxxzxxzxxzzzxxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
