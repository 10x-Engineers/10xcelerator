class c_2597_1;
    integer i = -431;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2597_1;
    c_2597_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz0x10xzx0zx1zzx11z0z11x01xzz1xzxzxzxxzzzxxzxxzxxxzxxzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
