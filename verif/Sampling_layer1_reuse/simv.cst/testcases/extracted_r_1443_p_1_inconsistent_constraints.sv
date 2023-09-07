class c_1443_1;
    integer i = -239;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1443_1;
    c_1443_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0000x1xx001zxx0xzz0x1010xz1xzxxzxzzxzxzzzzzxxxzzzxzxxxxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
