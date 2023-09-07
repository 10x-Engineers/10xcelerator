class c_2830_1;
    integer i = -470;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2830_1;
    c_2830_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1010zxxzzz001xxxz1zx00x101xz0xxxxzxzxzxzxxxxzxzxzxzxzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
