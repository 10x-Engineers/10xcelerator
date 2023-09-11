class c_1696_1;
    integer i = -281;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1696_1;
    c_1696_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z0z10x1z01xz0z0111xz0x00zzzzzzxxzxzxzxzzxzxzzxxzxzzzzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
