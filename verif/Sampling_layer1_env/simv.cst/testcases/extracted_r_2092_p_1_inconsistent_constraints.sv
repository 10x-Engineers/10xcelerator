class c_2092_1;
    integer i = -347;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2092_1;
    c_2092_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z111xzxz0xz0z110xzzxzx00zx011x0zxxzxxzxzxzzxxxzxxzzzzzxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram