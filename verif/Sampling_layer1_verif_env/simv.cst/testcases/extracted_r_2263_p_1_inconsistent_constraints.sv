class c_2263_1;
    integer i = -376;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2263_1;
    c_2263_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzz01z1101x0zzz0x11z1zx0100xx0zzzzzxxzxxxxxzzxzxzzxzzzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
