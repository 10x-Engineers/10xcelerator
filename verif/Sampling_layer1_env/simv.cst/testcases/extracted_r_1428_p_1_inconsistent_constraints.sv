class c_1428_1;
    integer i = -236;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1428_1;
    c_1428_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1xz1111x11xx111z000110z0x1x00xxzxzxxzzxxxxzxxzzzxxzxxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
