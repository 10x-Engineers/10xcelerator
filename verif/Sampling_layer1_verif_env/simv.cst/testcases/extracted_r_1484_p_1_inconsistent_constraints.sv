class c_1484_1;
    integer i = -246;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1484_1;
    c_1484_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zxzxx1z1zz10100zx0zx100zx0100zxzxzxxzzxzzxzzxxzzxzzxzzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
