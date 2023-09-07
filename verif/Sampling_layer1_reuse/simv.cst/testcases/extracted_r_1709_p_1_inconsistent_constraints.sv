class c_1709_1;
    integer i = -283;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1709_1;
    c_1709_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xzxx0x0xz1zzz00zzz101xx01zxzx1xxxxzzxzxxzxxxzxxzxxzxzxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
