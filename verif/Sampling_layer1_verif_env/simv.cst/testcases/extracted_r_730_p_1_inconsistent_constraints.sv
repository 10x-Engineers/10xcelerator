class c_730_1;
    integer i = -120;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_730_1;
    c_730_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx00101011xx0xxxxz1xz1z1xxxzx0zzxxxxzxzzxzxzxxxxxzzzxxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
