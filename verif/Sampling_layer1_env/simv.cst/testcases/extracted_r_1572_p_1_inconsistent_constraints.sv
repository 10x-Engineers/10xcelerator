class c_1572_1;
    integer i = -260;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1572_1;
    c_1572_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11xz0z1x000xx0x1zx10x00001x000zxzxxxzxxzxxxzzzxxzxzxxzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
