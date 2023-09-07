class c_1251_1;
    integer i = -207;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1251_1;
    c_1251_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1zxx0xz1z000x11z010111z00x10zxzxxzxxzzzzxzxxzxzzxxzxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
