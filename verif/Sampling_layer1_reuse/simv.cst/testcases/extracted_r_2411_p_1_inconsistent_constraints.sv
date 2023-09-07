class c_2411_1;
    integer i = -400;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2411_1;
    c_2411_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz01z0zz0xzx11xxz01z0010xz0z00zxxxzzzzzxxxzzzzzxzxzzxxxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
