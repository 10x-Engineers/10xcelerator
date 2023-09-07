class c_1595_1;
    integer i = -264;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1595_1;
    c_1595_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0z1x011x01xzxxx10xxz1xzxxz00zxzzxxxzzzzxxzzxxzxxzzzxxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
