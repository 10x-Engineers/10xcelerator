class c_1902_1;
    integer i = -315;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1902_1;
    c_1902_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z110xxxzz1z1zzxzx11x01x0z0110zzxxxxxzxxxxzxxzxzzzxxxxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
