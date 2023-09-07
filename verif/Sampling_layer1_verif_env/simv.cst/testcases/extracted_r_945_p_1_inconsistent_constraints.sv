class c_945_1;
    integer i = -156;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_945_1;
    c_945_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz10x1x0zz1zx11zxz0xx0zxxx110xzxzzzxxzxxxzzxzzxzzzxzxxzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
