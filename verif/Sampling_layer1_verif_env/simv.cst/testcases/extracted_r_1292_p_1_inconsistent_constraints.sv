class c_1292_1;
    integer i = -214;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1292_1;
    c_1292_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001011x1x0z1zz10zx10zzzxz110x1xzzxxzxzxxxzzzzzzzxxzzxzzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
