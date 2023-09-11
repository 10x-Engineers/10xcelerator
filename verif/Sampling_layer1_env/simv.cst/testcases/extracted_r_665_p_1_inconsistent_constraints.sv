class c_665_1;
    integer i = -109;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_665_1;
    c_665_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx00zxz101zxxx0x0z100xx1z1001xzzzzxzzxzzzxzzzxzxzxxzzzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
