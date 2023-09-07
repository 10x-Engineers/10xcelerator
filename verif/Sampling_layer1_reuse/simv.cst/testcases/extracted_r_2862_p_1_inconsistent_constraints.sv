class c_2862_1;
    integer i = -475;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2862_1;
    c_2862_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz000zzxx1zz0z1010xzxzxxx100xz0xzzxxxzzxzxzzzxxxxxxzzxzzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
