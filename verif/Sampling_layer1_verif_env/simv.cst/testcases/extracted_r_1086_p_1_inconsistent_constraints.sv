class c_1086_1;
    integer i = -179;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1086_1;
    c_1086_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1z10z10x1x1z1x1101x1111zz1z00xzxzzzzzxzzzzxzxxxxzxxzxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
