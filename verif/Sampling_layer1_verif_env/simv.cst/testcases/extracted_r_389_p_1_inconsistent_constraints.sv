class c_389_1;
    integer i = -63;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_389_1;
    c_389_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xzz001x0x1011x11x01z01z010z1xxzxxzxxzxxxzzzzzzxxzxxxxzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
