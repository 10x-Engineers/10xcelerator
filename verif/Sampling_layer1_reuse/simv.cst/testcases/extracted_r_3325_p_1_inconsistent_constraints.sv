class c_3325_1;
    integer i = -553;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3325_1;
    c_3325_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01zx1z1zzx10xz01zxzz01xxx11zxzxzxzzzzxzxzxxzxzxxxxxxzzzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
