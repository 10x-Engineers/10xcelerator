class c_1975_1;
    integer i = -328;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1975_1;
    c_1975_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0zxz0xzx0z0zxzxx0x001z100x10xxxxzxxxxxzxxxzzxzzzzxzzzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
