class c_157_1;
    integer i = -25;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_157_1;
    c_157_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z11xz0z1xz1z0zz10zz001z01zx1zzxxxxzxzzxzxxxzxzxzxzxxzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
