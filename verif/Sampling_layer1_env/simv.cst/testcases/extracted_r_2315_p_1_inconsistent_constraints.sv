class c_2315_1;
    integer i = -384;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2315_1;
    c_2315_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001101010x0zzz0z111xx0x00101x0zzzzxzxzzzxxxxxxzzzzxxzzzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
