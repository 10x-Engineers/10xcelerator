class c_2777_1;
    integer i = -461;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2777_1;
    c_2777_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xz1x11010x1x1x1z0x11110011x1zxzxzxzxzxxxzxxzzzxzzzxxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
