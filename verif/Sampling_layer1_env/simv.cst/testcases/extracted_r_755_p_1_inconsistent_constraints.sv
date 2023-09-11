class c_755_1;
    integer i = -124;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_755_1;
    c_755_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0z1zz0zxzz10zz1zx01x0z1z0001z0xzxzzxzzzxxzzzzzzzzzzzzzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
