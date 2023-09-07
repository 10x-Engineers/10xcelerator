class c_3425_1;
    integer i = -569;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3425_1;
    c_3425_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zzx0001z0xx1z0z1zzzxzzx1z10x1zzzzxzxxxxxxxzzzzxzzzzzzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
