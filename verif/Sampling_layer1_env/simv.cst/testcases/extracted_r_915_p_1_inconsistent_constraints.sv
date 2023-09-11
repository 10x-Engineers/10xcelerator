class c_915_1;
    integer i = -151;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_915_1;
    c_915_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x000zxz111000x1xz00zz1zx1x0z00zxxxxzzxzzxzzzxxzxxzxzxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
