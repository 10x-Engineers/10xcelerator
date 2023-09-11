class c_1201_1;
    integer i = -199;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1201_1;
    c_1201_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10zz0x0zx0001x1001x0z1111100z0zxxzxzxxxxxzxzxxzxzzxzzzxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram