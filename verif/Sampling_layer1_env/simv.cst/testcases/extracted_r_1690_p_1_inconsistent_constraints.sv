class c_1690_1;
    integer i = -280;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1690_1;
    c_1690_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z001zz111zzx0zzzx0z1001x1zz1zzxxzxxzxxxxxzzzxzzzxxxxxzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
