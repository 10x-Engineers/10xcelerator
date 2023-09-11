class c_2471_1;
    integer i = -410;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2471_1;
    c_2471_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z000zxxxzzx10x0001z100x1z10z1xxzxzxxzxxzxzzzzzxxxzxxxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
