class c_481_1;
    integer i = -79;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_481_1;
    c_481_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xz1xz111z1x100zz0z11x1xzxz111zzxzxxzxxxxxxxxzzxzzzxzxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
