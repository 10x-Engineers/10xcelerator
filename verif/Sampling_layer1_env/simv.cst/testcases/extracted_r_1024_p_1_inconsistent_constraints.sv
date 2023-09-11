class c_1024_1;
    integer i = -169;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1024_1;
    c_1024_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101xzz0zx1zx0zz0001100z10x0x0z0xxxzxzzzxzxxxxzxxxxxxxxzzzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
