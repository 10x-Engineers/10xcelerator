class c_2161_1;
    integer i = -359;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2161_1;
    c_2161_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z01z0zxx11x10z0z1z0101zxz01x01zxxzzxzxxzzzxzzxzzxxzzzzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
