class c_395_1;
    integer i = -64;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_395_1;
    c_395_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz101zx1zz0zx0zx000z1zzz1x001zxxxxzxzxxzzxxxzxxzxxxxxxzxxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
