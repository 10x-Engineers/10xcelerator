class c_1237_1;
    integer i = -205;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1237_1;
    c_1237_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxzzxxx1z100z0x1z0z1zx0xxxz1zx1xxxxxxxxxxzzxzxxzxzzxzzxzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
