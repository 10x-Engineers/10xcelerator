class c_2482_1;
    integer i = -412;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2482_1;
    c_2482_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzzx0xz0xz01zx1x1x00z11111xzx1zxzzzzzxxzzzzzzzxxxxzxzxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
