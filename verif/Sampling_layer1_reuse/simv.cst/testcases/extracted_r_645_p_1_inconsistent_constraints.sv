class c_645_1;
    integer i = -106;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_645_1;
    c_645_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx1x0x1z0z001x11z1xxxxx10zx10zxxxzxzxxxzxxzxxzxxzzxzzxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
