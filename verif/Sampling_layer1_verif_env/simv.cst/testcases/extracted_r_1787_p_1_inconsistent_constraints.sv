class c_1787_1;
    integer i = -296;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1787_1;
    c_1787_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz01xz1001xz1z00110z1z0zzzzxx0xzzzzzzzxzzxzxzxxxzxzzzzzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
