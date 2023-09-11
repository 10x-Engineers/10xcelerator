class c_3357_1;
    integer i = -558;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3357_1;
    c_3357_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0x000zx1z10x0z1xz000z1xzzxz011xxxxzzxzzxzzxxzxxzxzxzzxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
