class c_1694_1;
    integer i = -281;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1694_1;
    c_1694_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0000xxzz1z00zz101zz0x01xz0zz0z0xxxxxzzzzzzxxzzxxxxzzzxxzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
