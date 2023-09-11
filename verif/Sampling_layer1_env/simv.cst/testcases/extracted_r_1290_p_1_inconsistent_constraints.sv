class c_1290_1;
    integer i = -213;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1290_1;
    c_1290_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz01z111xzxxx0x0z001x1001111xx1zzzxxxxxzzxzxxxxzzzzxzzzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
