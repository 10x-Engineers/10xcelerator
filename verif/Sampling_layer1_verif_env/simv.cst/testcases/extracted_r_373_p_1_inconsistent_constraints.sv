class c_373_1;
    integer i = -61;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_373_1;
    c_373_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x01z11xx0z101x011xx1x0xzzzx1xxzzzxxxzxxzxzzzzzzxzzzzzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
