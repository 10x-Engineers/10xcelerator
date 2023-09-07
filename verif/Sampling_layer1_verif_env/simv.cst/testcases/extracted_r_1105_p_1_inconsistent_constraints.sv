class c_1105_1;
    integer i = -183;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1105_1;
    c_1105_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzz0zz0xzzzx1xx0zx1z00xz1x0x00xzzxzxzzzzzxzzxzxzxxxzzxzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
