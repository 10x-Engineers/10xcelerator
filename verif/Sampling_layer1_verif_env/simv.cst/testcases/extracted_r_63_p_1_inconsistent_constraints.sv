class c_63_1;
    integer i = -9;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_63_1;
    c_63_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z001zx0x00x1x10zxz0010xzxxz1xxxzzzxxzxzxxzzxzzxzxxzzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
