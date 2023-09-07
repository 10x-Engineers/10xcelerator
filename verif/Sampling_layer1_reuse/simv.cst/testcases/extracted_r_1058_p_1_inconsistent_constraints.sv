class c_1058_1;
    integer i = -175;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1058_1;
    c_1058_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz000zx0z1zx0z0x11z0z00xz0z10zxzzxxxxzxxzxxzzxzzxzzzzzzxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
