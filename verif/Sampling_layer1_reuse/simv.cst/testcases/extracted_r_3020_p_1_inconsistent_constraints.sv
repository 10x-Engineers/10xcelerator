class c_3020_1;
    integer i = -502;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3020_1;
    c_3020_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1x0110x0xx10z01101x0xxzz1011xxxzxxxxxxxzxxxxzzxzzzzzzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
