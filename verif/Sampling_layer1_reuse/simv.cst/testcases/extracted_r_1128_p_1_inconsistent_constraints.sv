class c_1128_1;
    integer i = -186;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1128_1;
    c_1128_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx0z0x0001zz01xz0zx1z10z11111zxzxzzxxzxxxxxzzzxzzxxxxxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
