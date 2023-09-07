class c_219_1;
    integer i = -35;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_219_1;
    c_219_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xz11z10zx1x01xz000z0x110x0111zzxzzzzzxzzxzxzzxzzxzxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
