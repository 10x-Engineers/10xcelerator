class c_1309_1;
    integer i = -217;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1309_1;
    c_1309_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100zx001zxx100zz0x0xz1010z0xxzxzzxxxxxzzxxzzzxxxxxzzxzxxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
