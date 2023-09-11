class c_1459_1;
    integer i = -242;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1459_1;
    c_1459_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxx00zxz0xx10xx0x000x001z1xxx0zzzzxzzxzzxxxxzxxxzzzzxxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
