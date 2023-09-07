class c_909_1;
    integer i = -150;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_909_1;
    c_909_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xzxx011001z1z0zzx0zz101x1xzxzzzzxxxxxxzxxzzzxxzzxzxzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
