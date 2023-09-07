class c_51_1;
    integer i = -7;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_51_1;
    c_51_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000x1x00xz0x1zz00zx0zx1zx0zxzzxxxzzxzxxzxxzzxzxxxxzxzxxxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
