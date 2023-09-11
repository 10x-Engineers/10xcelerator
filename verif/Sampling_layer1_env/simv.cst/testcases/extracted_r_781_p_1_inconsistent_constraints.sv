class c_781_1;
    integer i = -129;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_781_1;
    c_781_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxzzz00x1xzzzzxxz0x00zzzzx1zz0xzzxzzxxzzxxzzzxxxzzzzxzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
