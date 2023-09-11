class c_3103_1;
    integer i = -516;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3103_1;
    c_3103_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001110zzz0zz0z001x001xzzxx1zxxxzzzzxzzzxxxzxzzzzxxxxxzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
