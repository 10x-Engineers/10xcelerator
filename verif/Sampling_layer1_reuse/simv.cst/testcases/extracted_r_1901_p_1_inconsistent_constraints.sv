class c_1901_1;
    integer i = -315;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1901_1;
    c_1901_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z01zz10xz01z1000xz0z0x01zxx0xxxxxxzxzxzzzxxxxxzzzzxzzxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
