class c_3151_1;
    integer i = -524;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3151_1;
    c_3151_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00zx0x1xz1xxx1z1z10x0zz1zx1zxxzxzzzxxxxzxzxxzxxxzzxzxzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
