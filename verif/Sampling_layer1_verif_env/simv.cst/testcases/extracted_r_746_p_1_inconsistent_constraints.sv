class c_746_1;
    integer i = -123;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_746_1;
    c_746_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001zx11x00x11z0001010z11x1z1100zzzxxzxxxzxzzzzzzxzxxxzxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
