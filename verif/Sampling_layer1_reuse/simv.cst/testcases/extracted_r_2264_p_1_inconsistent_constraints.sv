class c_2264_1;
    integer i = -376;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2264_1;
    c_2264_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z0x01z0zz00zz11xz1z011zxzxx1xxxzzxzxxzxzxxzzxzxxxzzxxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
