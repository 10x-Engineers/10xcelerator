class c_845_1;
    integer i = -139;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_845_1;
    c_845_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z1x0xx01xzz0z11101x1zzx1x10x1zxzxxxxxxxzxxzzxzzzxxzxzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
