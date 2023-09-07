class c_2877_1;
    integer i = -478;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2877_1;
    c_2877_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0010x1z01xxx1zzzx0z0x0z1zz0xzzxxxxzzzzzxxxzxxxzxzzxzzzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
