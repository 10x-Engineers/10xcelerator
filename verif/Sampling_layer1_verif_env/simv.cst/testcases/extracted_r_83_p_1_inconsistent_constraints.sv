class c_83_1;
    integer i = -12;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_83_1;
    c_83_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x010x0010z00zx100z0zzxzz1xz1zzxzzzzzxzxzxzxxxzzxzxxzxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
