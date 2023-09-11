class c_3366_1;
    integer i = -559;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3366_1;
    c_3366_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1z1000xxxxx0xxx0zx0x0z01xx11zzxzxxzxxzzxzzxzxzzzxxxxxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
