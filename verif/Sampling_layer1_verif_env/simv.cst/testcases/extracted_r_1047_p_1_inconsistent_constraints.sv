class c_1047_1;
    integer i = -173;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1047_1;
    c_1047_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101000xz11xx000xzzzxz01z0zx01111xxzzzzzzxzxzzxzzxxxxxxxxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
