class c_2770_1;
    integer i = -460;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2770_1;
    c_2770_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z10xxx0011z1z1z0001zz1zx1x011x1zzzzxxxxxxzxzzzzzzxxzxzzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
