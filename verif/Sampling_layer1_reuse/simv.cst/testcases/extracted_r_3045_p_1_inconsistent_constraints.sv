class c_3045_1;
    integer i = -506;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3045_1;
    c_3045_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1x0z10xz00zzx11xz1zxxx1zx100zxxzxxxxzzzzzzzxzzxzzxxzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
