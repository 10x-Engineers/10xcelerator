class c_1775_1;
    integer i = -294;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1775_1;
    c_1775_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x10xx1zx1z00x110zzz11zx1101x1zxzxzzxzzxzzxzxxzzzxxzzxxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
