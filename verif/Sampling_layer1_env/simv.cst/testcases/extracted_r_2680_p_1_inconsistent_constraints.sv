class c_2680_1;
    integer i = -445;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2680_1;
    c_2680_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0x0xxx0xxzzxz00xz0z110zx1111xxzzzxxzxzxxxzxzzxxxzzzxxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
