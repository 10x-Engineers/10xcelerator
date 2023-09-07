class c_1317_1;
    integer i = -218;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1317_1;
    c_1317_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111z00100010z01z0111z111xxx0z0xzzzxzxxxzzzxxzzxxxxzzxzzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
