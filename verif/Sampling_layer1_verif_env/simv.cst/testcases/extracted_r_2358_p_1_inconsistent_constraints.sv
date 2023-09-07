class c_2358_1;
    integer i = -391;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2358_1;
    c_2358_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxx1x1001zxzx00111xzx0x1x10zx1zxxxxzzxzzxzzzzzxzxzzzxzxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
