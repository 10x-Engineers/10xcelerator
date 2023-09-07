class c_2858_1;
    integer i = -475;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2858_1;
    c_2858_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz0xz1z1010x0xz1xz0xzxx10x1x01zzxxzxzxzxxxxxzzzxzxxzzxxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
