class c_1801_1;
    integer i = -299;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1801_1;
    c_1801_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z01z0001zx0zz0z0xx101z000xzxxzzxxzxzzzxzxxxxxzxzxzzzzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
