class c_2271_1;
    integer i = -377;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2271_1;
    c_2271_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz001x0011xx01z1z0000xxzxxx01xzzzxzxzzxxxxzxzzzzzzxxzxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
