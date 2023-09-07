class c_1452_1;
    integer i = -240;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1452_1;
    c_1452_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1xzzxz0110x10xz0zx1z0100z101zzzxzxxzxzzzxzxzxzzzzxxzxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
