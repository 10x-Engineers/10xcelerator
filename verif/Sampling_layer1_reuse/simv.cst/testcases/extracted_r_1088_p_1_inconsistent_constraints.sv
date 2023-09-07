class c_1088_1;
    integer i = -180;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1088_1;
    c_1088_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzx1xz111z01z0x0x1z11xzzzxz11zxxxzxxxxxzzzxxzzxxzxzzzzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
