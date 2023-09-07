class c_539_1;
    integer i = -88;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_539_1;
    c_539_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01z0010011z0zx11x1z01z1z0z11z0xxzxzzzzxzzxxxzzzxxxzzxxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
