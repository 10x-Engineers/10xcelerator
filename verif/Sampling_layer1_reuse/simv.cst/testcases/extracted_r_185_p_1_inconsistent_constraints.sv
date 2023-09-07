class c_185_1;
    integer i = -29;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_185_1;
    c_185_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxz0x0x0xz000zxzxx0x11z001x00zxzxxxxxxxzxzxzzzxzzzzxzxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
