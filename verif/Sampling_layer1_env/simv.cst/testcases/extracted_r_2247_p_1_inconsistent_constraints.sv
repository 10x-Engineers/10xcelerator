class c_2247_1;
    integer i = -373;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2247_1;
    c_2247_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00xz011x1010zz00z0x01100z0xx0x0xxzxzxxzzzxzzzxzzzxzzxzzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
