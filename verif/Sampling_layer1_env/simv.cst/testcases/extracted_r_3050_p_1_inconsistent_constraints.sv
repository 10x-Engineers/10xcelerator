class c_3050_1;
    integer i = -507;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3050_1;
    c_3050_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x01z010z0z0x1zz0x01z0z011z001zzzxzxzxxzzxzzzxxzzzxzzxxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
