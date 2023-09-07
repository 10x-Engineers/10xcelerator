class c_2706_1;
    integer i = -449;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2706_1;
    c_2706_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x00z0zx1x00x1111xz00zx0xz0111xxxzzxxxxzxxzzxxzxxzxzzzxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
