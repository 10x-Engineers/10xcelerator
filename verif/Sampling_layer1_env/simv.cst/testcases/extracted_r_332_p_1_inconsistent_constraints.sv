class c_332_1;
    integer i = -54;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_332_1;
    c_332_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x0011z0xxx011xz01zz1z0x1101z1zzxxxzxzxxxzzxzzxxxxxzxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
