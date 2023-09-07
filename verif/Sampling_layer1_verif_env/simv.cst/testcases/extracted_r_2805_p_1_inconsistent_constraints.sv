class c_2805_1;
    integer i = -466;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2805_1;
    c_2805_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001z11x010x011z00zzz0110zx1zxxxxzzzzxxxzzxzzxzzzxxxxzxzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
