class c_695_1;
    integer i = -114;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_695_1;
    c_695_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0110x00z1zx1z10xzz1x0z0z11zz1xxzxxzxxzxzxxzxxxzzzzzxzzxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
