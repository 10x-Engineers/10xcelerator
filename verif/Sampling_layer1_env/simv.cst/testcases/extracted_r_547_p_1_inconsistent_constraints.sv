class c_547_1;
    integer i = -90;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_547_1;
    c_547_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz11z1xz110zx110z1z0zz0z1xz11zzxzzxzzzxxzzxzxxxxzxzzxzxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
