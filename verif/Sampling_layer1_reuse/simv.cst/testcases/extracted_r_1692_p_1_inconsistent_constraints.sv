class c_1692_1;
    integer i = -280;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1692_1;
    c_1692_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11011xxx0xxxx1x0z0010xz1x01zxzxxxzxxxzzzxzxzzxxzxzzxxzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
