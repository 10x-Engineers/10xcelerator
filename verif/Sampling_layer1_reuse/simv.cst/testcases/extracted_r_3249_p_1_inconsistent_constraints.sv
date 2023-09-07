class c_3249_1;
    integer i = -540;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3249_1;
    c_3249_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zz1xz01001011zzxz1xx1x0x100z0xzzxzxzzxxxzzzxzxxzzxxzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
