class c_3243_1;
    integer i = -539;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3243_1;
    c_3243_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz01zxxz1xzz1x11zx10x1zz10xz01zxxzxxzxzzzzxzxzxxxxzzxzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
