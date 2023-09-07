class c_44_1;
    integer i = -6;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_44_1;
    c_44_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001100z1xz01z01z11z0zxzx010xxzzzzzxzzxxxzzxzxxzzxzzxzzxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
