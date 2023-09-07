class c_1166_1;
    integer i = -193;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1166_1;
    c_1166_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1z0111z10zx111xxxzz1x0001z0xxxxxxxzzxzzzxzzxzxxxxzzzzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
