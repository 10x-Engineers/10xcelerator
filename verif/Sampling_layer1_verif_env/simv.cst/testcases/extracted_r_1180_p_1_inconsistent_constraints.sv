class c_1180_1;
    integer i = -195;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1180_1;
    c_1180_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1x0001z0zx11110zz1z01z00xxz00zxxxzxzzzzxzzxxxxxzxzxzzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
