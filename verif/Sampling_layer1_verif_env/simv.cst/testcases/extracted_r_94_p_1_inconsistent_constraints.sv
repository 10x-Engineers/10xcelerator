class c_94_1;
    integer i = -14;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_94_1;
    c_94_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01001x0zx0x01z0z11z10011xz1xzzxxzxzzxxzzzxxzxxxzzzzzxzxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
