class c_2032_1;
    integer i = -337;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2032_1;
    c_2032_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxxx1xx01z0z0zzz011z01xx010x11xxxxzzzzxzzxxxxxxzzxzxxxzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
