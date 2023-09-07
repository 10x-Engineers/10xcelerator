class c_109_1;
    integer i = -17;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_109_1;
    c_109_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xzxx11x1xz1zz000zzxzxx11zz001xxxxxxxzxzxxxxzxzzxzxxzxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
