class c_622_1;
    integer i = -102;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_622_1;
    c_622_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111x10x0z11zxx1zxzxzxxxxzxx0z0x1zxxxzzzzzzzxxzzxzzzzzxxxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
