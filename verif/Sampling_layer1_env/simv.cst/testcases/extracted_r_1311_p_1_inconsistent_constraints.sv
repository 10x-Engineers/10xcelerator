class c_1311_1;
    integer i = -217;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1311_1;
    c_1311_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00zzxx10z1x100110zxxz1zzxx0xxzzzxxxxxxzxzzxxxzzzxxxxxzxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram