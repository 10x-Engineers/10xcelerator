class c_77_1;
    integer i = -11;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_77_1;
    c_77_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz1x0xz01000xz10zxzxzxx00z00xzxzxxzxzzzzzzzxzxzzzxxxxxxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
