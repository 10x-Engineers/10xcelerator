class c_2602_1;
    integer i = -432;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2602_1;
    c_2602_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz11z01z1x00zzz10x0100z1xz010zzzxzzxxzzzxzxzxxxzxxzxxzxxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
