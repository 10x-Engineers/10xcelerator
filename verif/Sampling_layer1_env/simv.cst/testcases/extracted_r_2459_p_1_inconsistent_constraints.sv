class c_2459_1;
    integer i = -408;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2459_1;
    c_2459_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110zx1001zxzx0xx1x0zxz10xxx0000zxzxzxxxzzxxxzxxxzxxzxzxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
