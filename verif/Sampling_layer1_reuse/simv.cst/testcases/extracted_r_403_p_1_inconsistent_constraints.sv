class c_403_1;
    integer i = -66;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_403_1;
    c_403_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xxz10x11zz0z1z0001x111zz10z1xxxxzxzxxzxxxxzxzxxxzxzxxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
