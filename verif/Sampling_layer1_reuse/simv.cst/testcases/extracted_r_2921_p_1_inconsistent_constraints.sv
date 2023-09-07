class c_2921_1;
    integer i = -485;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2921_1;
    c_2921_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1zz00xzzx1x000xxzz101x0z0z0zxzxxzxzzzxzzxxzzzxxxxzzzxzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
