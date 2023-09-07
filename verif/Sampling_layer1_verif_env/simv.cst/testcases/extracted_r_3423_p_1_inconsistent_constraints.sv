class c_3423_1;
    integer i = -569;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3423_1;
    c_3423_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101x1xxx0101x1zzz00x10zx00z1100xxzxxzzxxzxxxxzxxzxzzxxxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
