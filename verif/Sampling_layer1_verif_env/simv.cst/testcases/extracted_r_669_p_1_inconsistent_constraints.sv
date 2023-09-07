class c_669_1;
    integer i = -110;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_669_1;
    c_669_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxxxz11xx1z11z101zzx001z0zz0xxxzxzxzxxzxxzxxxzzzxxxzxxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
