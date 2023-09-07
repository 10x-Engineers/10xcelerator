class c_1922_1;
    integer i = -319;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1922_1;
    c_1922_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zz1zxzx10x00zx010zxxxzzx1x001xzzxzzzxxzxzxzzzxxxxxzxxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
