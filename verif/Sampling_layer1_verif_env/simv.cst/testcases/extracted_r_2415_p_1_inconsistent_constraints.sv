class c_2415_1;
    integer i = -401;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2415_1;
    c_2415_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx010011xz0xx0zz0x0011zx01x00zzxzzxzzxxzzzzzxzzzzzzzzzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
