class c_3101_1;
    integer i = -515;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3101_1;
    c_3101_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01001zxxz1zx1z1x1x1x1xz01x1xxzxxxxzxxxzxxxzxxzxxxxxxxzxxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
