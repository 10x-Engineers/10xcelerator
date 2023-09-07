class c_2640_1;
    integer i = -438;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2640_1;
    c_2640_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x01z0x1z1111x1x1x001z10z0x110xxzzxzzzxzzxzxzxxzxxzzzxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
