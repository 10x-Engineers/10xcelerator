class c_2809_1;
    integer i = -467;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2809_1;
    c_2809_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001z0xzz1x0x0z0zzz1xzzz010zz0z1zxxzxxxzxxxxzzxzzzxxzxxzzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
