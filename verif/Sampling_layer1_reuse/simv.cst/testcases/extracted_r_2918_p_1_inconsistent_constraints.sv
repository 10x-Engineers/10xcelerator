class c_2918_1;
    integer i = -485;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2918_1;
    c_2918_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111zx0zz01zz0zzx1100xx1000xz1z1xzxzxxxxxxzxxxxzxzzzxxxzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
