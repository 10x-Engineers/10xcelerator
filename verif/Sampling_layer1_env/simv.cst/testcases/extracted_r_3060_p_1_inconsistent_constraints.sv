class c_3060_1;
    integer i = -508;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3060_1;
    c_3060_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz011x0z00xx1zzx10z00zx0zzxxx110zzzxxxzxzxzxzzxxxzzzxxxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
