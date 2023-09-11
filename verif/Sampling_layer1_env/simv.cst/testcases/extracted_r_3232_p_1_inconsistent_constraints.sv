class c_3232_1;
    integer i = -537;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3232_1;
    c_3232_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101zx10101z00x1010zzz10xx1zzzzxzxzzxzzzxxzxxzxxxzxxxzzzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
