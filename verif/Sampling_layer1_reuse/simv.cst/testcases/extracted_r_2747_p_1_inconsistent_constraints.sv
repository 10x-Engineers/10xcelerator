class c_2747_1;
    integer i = -456;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2747_1;
    c_2747_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z011x1z0z11000zxx1xxxxxzzzx0zxxxxxzxxzzzzzzzzxxxzzxzzzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
