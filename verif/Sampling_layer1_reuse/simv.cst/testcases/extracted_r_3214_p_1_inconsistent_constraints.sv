class c_3214_1;
    integer i = -534;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3214_1;
    c_3214_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxzxzx0xxxx0zxxx000zz010x01z00zxxzxzxzzxxxzxzxxzxxxxxxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
