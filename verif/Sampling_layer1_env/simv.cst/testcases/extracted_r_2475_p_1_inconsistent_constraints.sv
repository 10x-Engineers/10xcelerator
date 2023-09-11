class c_2475_1;
    integer i = -411;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2475_1;
    c_2475_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0x10z00zz1xz001x0x0z11z101zx1xzxxxzxxzzzxxxzxzzxzxxxzxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
