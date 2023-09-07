class c_2495_1;
    integer i = -414;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2495_1;
    c_2495_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0zzx10z01011xzxxx0zzx1z0x010zxxxxxzzzzzzzxzzzxzxxxxxxzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
