class c_122_1;
    integer i = -19;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_122_1;
    c_122_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xx111zzxx00z010zzz0z1xz00x110zxxzzxzxzxxxzxzzxxzxxzxzzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
