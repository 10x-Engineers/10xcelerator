class c_3137_1;
    integer i = -521;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3137_1;
    c_3137_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xxz1zz0zzxxx0z00z0zxxz00xxx0zzxxzzzxzxzzzxxzxzzzxzxzxzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
