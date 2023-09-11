class c_2546_1;
    integer i = -423;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2546_1;
    c_2546_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xxxzzz0z0xxzxx00x0zx0x0xxx100zzzzzxxzzzxzxzxzxzxxzzxxzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
