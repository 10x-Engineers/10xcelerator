class c_3143_1;
    integer i = -522;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3143_1;
    c_3143_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0011xx01101xzz0x100z01z110zz0z1xzxzxxzxzxzzxzxxzzzxxxzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
