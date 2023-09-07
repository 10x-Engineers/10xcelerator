class c_248_1;
    integer i = -40;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_248_1;
    c_248_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00zz00zz01zxxx00xzz0xzzx00x1011zxxzzxxxxxxzxxxxxzxzxzxxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
