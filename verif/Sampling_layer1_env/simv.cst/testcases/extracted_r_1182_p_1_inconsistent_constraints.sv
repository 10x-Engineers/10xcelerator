class c_1182_1;
    integer i = -195;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1182_1;
    c_1182_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxz0x100xzx1100xx1x01x1x0zx1zzxzxxzzxzzxzzxzxxzxzzxxxxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
