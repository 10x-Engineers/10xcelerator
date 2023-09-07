class c_249_1;
    integer i = -40;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_249_1;
    c_249_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zz1010xzzxz01z01xzz1zxxx0x101xxzzzxxzzxxxzxxzxxxxxxxxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
