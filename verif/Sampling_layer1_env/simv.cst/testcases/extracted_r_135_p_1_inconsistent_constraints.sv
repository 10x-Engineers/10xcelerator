class c_135_1;
    integer i = -21;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_135_1;
    c_135_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz001zz0xz1011xxzx01x0x01zzxx01xxxzxzzzxxzzzxzxzxxxzzzzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
