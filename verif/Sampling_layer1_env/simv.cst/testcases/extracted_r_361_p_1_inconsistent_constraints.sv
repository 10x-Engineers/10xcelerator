class c_361_1;
    integer i = -59;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_361_1;
    c_361_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000xz101xx0xxzz0z00zz0z1z000z0zxzzxxxxxzxxxxxzzxxxzxxxxxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
