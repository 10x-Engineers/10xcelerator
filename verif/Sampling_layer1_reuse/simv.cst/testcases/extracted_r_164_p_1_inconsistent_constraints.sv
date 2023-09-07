class c_164_1;
    integer i = -26;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_164_1;
    c_164_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1xx1zx1xxx11z101xzz0x01x00zz1zxxxzzxxxzzxxxxxzzzxxzxxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
