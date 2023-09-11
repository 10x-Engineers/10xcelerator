class c_3062_1;
    integer i = -509;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3062_1;
    c_3062_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x10100011z01z000x000x11z10x1xzzzzxxxzzxzxxxzzxxxzxxzzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
