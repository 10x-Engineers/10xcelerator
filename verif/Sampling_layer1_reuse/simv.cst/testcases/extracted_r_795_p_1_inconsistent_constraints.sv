class c_795_1;
    integer i = -131;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_795_1;
    c_795_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzxx00zx0zzx0xz0zxzzx01zxz0x00zxzzzzxzzxzxxxxxzxzxzzzzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
