class c_1089_1;
    integer i = -180;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1089_1;
    c_1089_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zz1x1x1x001111x0z1zx01zzx0x1zzzxxzxzzxzzzxxzxxzzzzxzzxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
