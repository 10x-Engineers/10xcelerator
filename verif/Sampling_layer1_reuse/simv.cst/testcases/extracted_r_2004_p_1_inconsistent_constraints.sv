class c_2004_1;
    integer i = -332;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2004_1;
    c_2004_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx01xx0xz000001100xzxz0z0xz11xxxzxzzxxzxzxxxxzzzxzxxxzzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
