class c_551_1;
    integer i = -90;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_551_1;
    c_551_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz00x01z1x00xxx01z11x1zx1z000zxxxzzxxzzzxxxzxxxzzzzxxzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
