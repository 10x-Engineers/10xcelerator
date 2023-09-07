class c_1965_1;
    integer i = -326;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1965_1;
    c_1965_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxxx00z0xz0zxzx11x11x00x1100zxzxxxxxxzzzzzzxzxzxxxzxxxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
