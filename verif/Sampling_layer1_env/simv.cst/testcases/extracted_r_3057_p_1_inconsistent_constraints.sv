class c_3057_1;
    integer i = -508;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3057_1;
    c_3057_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz10xz11110111z1zz01xzzzx00xx0zzxzxxxzzxzzxxxzxzzxzzxxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
