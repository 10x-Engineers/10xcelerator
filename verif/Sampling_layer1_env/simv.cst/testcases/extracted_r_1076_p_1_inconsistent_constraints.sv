class c_1076_1;
    integer i = -178;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1076_1;
    c_1076_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100z0x01z1x1zxxxxz10xxzxx0x0110zxxxzzzzxxxxzzxxxzzxxxzxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
