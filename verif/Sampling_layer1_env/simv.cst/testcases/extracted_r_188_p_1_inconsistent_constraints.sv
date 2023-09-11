class c_188_1;
    integer i = -30;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_188_1;
    c_188_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx111xz1z0zzzxxxzz11x0zz0xx10zzzzxzzzxzzxxxxxzzxxxzzxxzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
