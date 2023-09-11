class c_667_1;
    integer i = -110;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_667_1;
    c_667_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0zx1z11zz01xx1x0x0xx01xz1xxx1zxxzxxxxxzxzxxxxxxzzzxzzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
