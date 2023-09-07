class c_703_1;
    integer i = -116;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_703_1;
    c_703_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1z100x01z1101z110zzzzzz00111zxzzxxzxzzxxzxzxxxzxxxxxzzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
