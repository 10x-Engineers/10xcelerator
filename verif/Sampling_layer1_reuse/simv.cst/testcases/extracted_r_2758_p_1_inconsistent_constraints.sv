class c_2758_1;
    integer i = -458;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2758_1;
    c_2758_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xz01xxx1z1x0xxzxzxzxz0z0x0xxxxxxzzxzzxzzxxxzxxxzzxxxzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
