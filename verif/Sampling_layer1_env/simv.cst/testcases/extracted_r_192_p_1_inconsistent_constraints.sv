class c_192_1;
    integer i = -30;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_192_1;
    c_192_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1xz11xx0z01x1z01001z0z0011xx0xzxzxxzxxxxzzxxzzzxxzxzzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
