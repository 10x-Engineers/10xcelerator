class c_1369_1;
    integer i = -227;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1369_1;
    c_1369_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011z1011z0zz1zxz0x01z0010zxx0z0xxzxxzzzzxzzxxxxxzxzxzzxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
