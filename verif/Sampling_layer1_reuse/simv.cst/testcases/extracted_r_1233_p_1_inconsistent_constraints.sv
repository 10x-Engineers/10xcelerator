class c_1233_1;
    integer i = -204;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1233_1;
    c_1233_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1z00zz11xz0x1x10xx1010xz0z01xzxzzzzzzzzzzxzzxzxxzxxxzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
