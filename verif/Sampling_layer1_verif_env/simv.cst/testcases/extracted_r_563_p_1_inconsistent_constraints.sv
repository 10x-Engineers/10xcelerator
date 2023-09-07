class c_563_1;
    integer i = -92;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_563_1;
    c_563_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxz0zx1xxz1xxxz1z0000z0x010zx1zzxxzxzxxzxxzxzzxxxxzxxzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
