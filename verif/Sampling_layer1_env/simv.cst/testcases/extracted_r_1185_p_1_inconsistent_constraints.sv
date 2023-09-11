class c_1185_1;
    integer i = -196;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1185_1;
    c_1185_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx01zz10z0x111zz0z110z01xzxz00zzxxxxxzxzxzzzxxxxxxzxxxxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
