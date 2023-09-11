class c_2404_1;
    integer i = -399;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2404_1;
    c_2404_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz001z0xzxx0z01zzzx000x0x00x10zxxzzxxzxzzxzxzxzzzzxzzxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
