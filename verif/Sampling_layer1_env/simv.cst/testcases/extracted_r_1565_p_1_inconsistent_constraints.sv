class c_1565_1;
    integer i = -259;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1565_1;
    c_1565_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zzxz0x1x0z1zxzzzz00z1x1z1xxzxzxzzxxzzzzxzxxxzzzxxxzxxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
