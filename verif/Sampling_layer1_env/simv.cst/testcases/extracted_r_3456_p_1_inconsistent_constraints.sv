class c_3456_1;
    integer i = -574;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3456_1;
    c_3456_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z1zxzz00xzz0x1z11xx01zz1001x0xzzxzxxzxzxzxxxxxxxxzxxzxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
