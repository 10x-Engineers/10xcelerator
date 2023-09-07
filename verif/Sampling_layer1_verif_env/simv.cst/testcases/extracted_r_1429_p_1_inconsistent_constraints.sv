class c_1429_1;
    integer i = -237;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1429_1;
    c_1429_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxzzz0x1101xzz10x0011z0zxx00xxzzxxzzzzzzxxxxzxzxxzxxxzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
