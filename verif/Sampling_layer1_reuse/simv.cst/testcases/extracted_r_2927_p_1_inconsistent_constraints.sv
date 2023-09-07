class c_2927_1;
    integer i = -486;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2927_1;
    c_2927_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxxx1xx110z0xx0xz10z0x01z0110zxzxxxzzzzzxzzxzzzzxxzzzxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
