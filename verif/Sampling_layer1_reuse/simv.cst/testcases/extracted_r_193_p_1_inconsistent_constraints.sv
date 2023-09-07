class c_193_1;
    integer i = -31;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_193_1;
    c_193_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101zzz011z00x0zxxx0z00z010x1110xxxzxxxxxzxzzzxxzxzxxzxzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
