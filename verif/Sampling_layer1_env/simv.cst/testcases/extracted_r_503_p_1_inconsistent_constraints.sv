class c_503_1;
    integer i = -82;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_503_1;
    c_503_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0x10x000z00x00x0010zzzxz0z1xzzxxzxzxzzzxxzxxzxzxxxxxzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
