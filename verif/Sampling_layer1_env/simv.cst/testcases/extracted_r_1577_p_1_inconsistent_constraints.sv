class c_1577_1;
    integer i = -261;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1577_1;
    c_1577_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x1000zzxx0x1zxxzxxz00101x01z1xzxzzxzxxxzxzzzzxxzxzxxzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
