class c_993_1;
    integer i = -164;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_993_1;
    c_993_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01z0z1xz11zxzxzzzz0x0110xzxz0zzxxzxzxxxzxzxzxzzxzzxxzzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
