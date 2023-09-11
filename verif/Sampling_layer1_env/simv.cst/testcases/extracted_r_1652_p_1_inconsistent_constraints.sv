class c_1652_1;
    integer i = -274;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1652_1;
    c_1652_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000x0zx1z01000z00xx10000x0x1z1xzzxzxxxxzzxzxzzxzzxxzzzxzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
