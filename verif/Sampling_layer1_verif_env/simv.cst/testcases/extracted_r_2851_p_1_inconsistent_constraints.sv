class c_2851_1;
    integer i = -474;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2851_1;
    c_2851_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zxxxx100xzx1z1z10xx1x1xxz10x1xxxxzxzxzxxxxxzzxzzxxxxxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
