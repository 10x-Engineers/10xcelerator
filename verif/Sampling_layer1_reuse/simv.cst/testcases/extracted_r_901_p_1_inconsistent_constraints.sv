class c_901_1;
    integer i = -149;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_901_1;
    c_901_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1zxz0zx1x1001z0zz01z1z11111xzzzzxzxxxxzxxxxzxzzzzzxzxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
