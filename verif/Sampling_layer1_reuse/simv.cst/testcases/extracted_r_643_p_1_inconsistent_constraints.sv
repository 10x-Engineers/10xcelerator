class c_643_1;
    integer i = -106;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_643_1;
    c_643_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1z11x0010z0xz0z1xxx01000xxz00xzzxzxxxxzxxzzxzzxxzzzxxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
