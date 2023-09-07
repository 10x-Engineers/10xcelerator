class c_807_1;
    integer i = -133;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_807_1;
    c_807_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0100101z00zxxxx00xzx0xz0z001zxxxzzxxzzxxxxxzxzxzzzxzzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
