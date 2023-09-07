class c_560_1;
    integer i = -92;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_560_1;
    c_560_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11011zzzzz0xz11xx1x0xz01111zzzzxzzxzzzxzxxxxzzzzxzxzxxxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
