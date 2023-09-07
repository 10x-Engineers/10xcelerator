class c_308_1;
    integer i = -50;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_308_1;
    c_308_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z01z0x01x1x0zxz00xzz00zx0z010zzzzzxzzzxxzxxzzzxzzzxzzxzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
