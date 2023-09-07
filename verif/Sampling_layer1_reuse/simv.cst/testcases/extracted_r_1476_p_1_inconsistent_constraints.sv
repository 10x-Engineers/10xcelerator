class c_1476_1;
    integer i = -244;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1476_1;
    c_1476_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx001xz1z10zz0z0011z0z11z11x10xzxzzxxzxzzxxzzzzxxxzxzxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
