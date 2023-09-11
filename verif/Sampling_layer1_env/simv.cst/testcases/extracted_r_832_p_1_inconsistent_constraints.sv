class c_832_1;
    integer i = -137;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_832_1;
    c_832_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1001zzzzx1z01x1x00xz0zx1xx10z1xzzxxzzxzzxzzzzxxxzzxzzxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
