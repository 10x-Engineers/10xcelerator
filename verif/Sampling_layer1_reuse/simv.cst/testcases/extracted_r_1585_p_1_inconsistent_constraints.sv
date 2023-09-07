class c_1585_1;
    integer i = -263;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1585_1;
    c_1585_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000x0z11010xz100x01xz0x1zz01001zxxxzzxzxxxzzzzzxxzxxzzzxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
