class c_3390_1;
    integer i = -563;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3390_1;
    c_3390_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000100100111x1001z0x1110101x0x1xzxxxxzzzzzxxxzzzzzxzxzxzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
