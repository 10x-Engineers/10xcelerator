class c_1431_1;
    integer i = -237;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1431_1;
    c_1431_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzzx101z00xz00zzz1x010xz1000zzzxzxzzxxxxxxxzxzzzxzxzxzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
