class c_1632_1;
    integer i = -270;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1632_1;
    c_1632_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z0x0xzzxxx00zxxx01zzx1zz0xzzxxxzxzzzzxxzxzxzxxxxzxzzxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
