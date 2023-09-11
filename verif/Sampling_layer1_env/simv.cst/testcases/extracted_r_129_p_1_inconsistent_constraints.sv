class c_129_1;
    integer i = -20;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_129_1;
    c_129_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0x0000zz1x1xz1110000z0x01x01x1zxxxzzxxzxxxxzzxxxxxzzxxxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
