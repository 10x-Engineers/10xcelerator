class c_2354_1;
    integer i = -391;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2354_1;
    c_2354_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0zx110z10zz1zx1z10zz1xz1z0z00zxzxxzxxxzxxxzxzzxxzxzzzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
