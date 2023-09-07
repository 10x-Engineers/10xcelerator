class c_1651_1;
    integer i = -274;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1651_1;
    c_1651_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100x0zxz1zz0z0011xz1zx0xx00x1z1zxxxzxzxxzxzxzzxxzzxzzxxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
