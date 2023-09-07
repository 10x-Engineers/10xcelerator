class c_144_1;
    integer i = -22;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_144_1;
    c_144_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xx01xz1zzzxz1x10zx1101xx0z1z10zxzzxzxxzxxxxxxxzzxzzzxzxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
