class c_1163_1;
    integer i = -192;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1163_1;
    c_1163_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1zxzxx0x0z1010x0010zxx0100xz1zxxzxxxxxzxxxxxxzzxxxxxxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
