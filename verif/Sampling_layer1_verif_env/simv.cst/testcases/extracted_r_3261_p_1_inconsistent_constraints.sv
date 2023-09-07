class c_3261_1;
    integer i = -542;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3261_1;
    c_3261_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011zx1zx0zz01zzxzxzxz0zxxx0x1x0xxxxxzzxxxxxxzzzxxzzzxxxxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
