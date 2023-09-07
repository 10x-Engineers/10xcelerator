class c_2058_1;
    integer i = -341;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2058_1;
    c_2058_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z0111x01xz0z10xx00xxzz0110xxzxzzxzxzxxxxzzzxzxzxxzxzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
