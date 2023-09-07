class c_1631_1;
    integer i = -270;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1631_1;
    c_1631_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzz0x11zzx10z1zz00100x0zxzx01xzzzzxxzzzzxzzzzzxxxzxzxzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
