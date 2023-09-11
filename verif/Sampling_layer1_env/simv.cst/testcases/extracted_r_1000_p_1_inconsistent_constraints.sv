class c_1000_1;
    integer i = -165;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1000_1;
    c_1000_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx1xxx1zz1zx10011z10z1z0zxzx01zxzxzzzzxzxxxxxzzzzzxzzzxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
