class c_1241_1;
    integer i = -205;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1241_1;
    c_1241_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0110101z1xzz10011z00xz0x1101x1zzxxxxzzxzxxxxxzzxzxzzzzzzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
