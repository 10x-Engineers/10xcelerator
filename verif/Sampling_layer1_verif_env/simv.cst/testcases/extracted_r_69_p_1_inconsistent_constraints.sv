class c_69_1;
    integer i = -10;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_69_1;
    c_69_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zz101x11xzz1x01z0z1zx11xxzzxzxzzzzzxxxxzxxxzxxxzxxzzxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
