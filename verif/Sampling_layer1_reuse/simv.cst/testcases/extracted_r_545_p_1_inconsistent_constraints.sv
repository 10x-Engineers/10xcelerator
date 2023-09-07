class c_545_1;
    integer i = -89;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_545_1;
    c_545_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111zz11x0xz1z1z0zx1zxx00xzz0x1xxxxxzxzzxzxzxxxzxxxzxxxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
