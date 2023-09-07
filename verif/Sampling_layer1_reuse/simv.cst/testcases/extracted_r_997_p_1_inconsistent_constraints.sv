class c_997_1;
    integer i = -165;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_997_1;
    c_997_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zxz0x1xx1xx1xx0101zzz1100zzxzzzxxxxzzxxxzzxxzzxxxxzxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
