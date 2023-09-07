class c_673_1;
    integer i = -111;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_673_1;
    c_673_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xxzxzx001x10011z0x01z0011zxxx0zxzxzzxzxxxxzzxzxxxzzxzzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
