class c_2204_1;
    integer i = -366;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2204_1;
    c_2204_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz11xz0x01zx1000011zzx111zz11zzxxxxxxxxxxxxzzxzxzzzzxzzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
