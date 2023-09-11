class c_528_1;
    integer i = -86;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_528_1;
    c_528_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z101xx1x0zxx01x1zx1zx100x0zxzxxzxzxxzzzzxxzzxxxzzzzxxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
