class c_1316_1;
    integer i = -218;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1316_1;
    c_1316_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110z10z11z01x10111x01z0x1z11x0xxzzxxxzzzzxzxzxzzzxzzxzzxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
