class c_1483_1;
    integer i = -246;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1483_1;
    c_1483_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z010zx1111z11z1z110z00zx1x1z11xxxxxxxxzxxzxzzxxxzzxzzzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
