class c_2303_1;
    integer i = -382;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2303_1;
    c_2303_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zxzxz00x10xxxx01zz1z100zz0x0zzzzxzzzxzzzxzzxzxxxzxzzxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
