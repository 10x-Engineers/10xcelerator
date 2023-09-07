class c_1796_1;
    integer i = -298;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1796_1;
    c_1796_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzx10xz11zx0z0z111x1001z11z0zzxzzzzzzzxzxzxzxxzzzxxzxzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
