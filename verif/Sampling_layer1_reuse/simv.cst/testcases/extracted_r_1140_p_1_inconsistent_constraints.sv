class c_1140_1;
    integer i = -188;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1140_1;
    c_1140_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1010z1zx00z01010110110zzx0xz1x1zzxxxzxxzzzzxxxzxxxxzzxzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
