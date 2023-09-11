class c_862_1;
    integer i = -142;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_862_1;
    c_862_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0xz0x1111z1zxz0xx0zxzz11x1xx1zxxzzzzxzxxzxzzxzzxzxxxxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
