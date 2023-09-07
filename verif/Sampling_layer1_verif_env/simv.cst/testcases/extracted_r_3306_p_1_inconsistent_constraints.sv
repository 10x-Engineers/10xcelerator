class c_3306_1;
    integer i = -549;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3306_1;
    c_3306_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z1z11zzz100000x01x011zzx1z1x0zzxzxzzxzzzxzxxxxxzxzxzxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
