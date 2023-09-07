class c_779_1;
    integer i = -128;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_779_1;
    c_779_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11x1x01z00xx0z00x11zx1xx1100z1xzxzzxxxzxzxzxxzzxzxxxxxxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
