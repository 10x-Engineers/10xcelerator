class c_3003_1;
    integer i = -499;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3003_1;
    c_3003_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zzzx1x1xxzx00zz1zx11x01zzzzzzzxxzxxxxzzzxxzzzzxzxxzxzxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
