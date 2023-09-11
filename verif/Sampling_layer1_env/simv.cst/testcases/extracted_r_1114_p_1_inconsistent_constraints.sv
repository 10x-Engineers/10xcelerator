class c_1114_1;
    integer i = -184;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1114_1;
    c_1114_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx01000z1xx111z0zx111x10zxxzx00zzxzxxzxzxxxzxzxxxxzzzzzxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
