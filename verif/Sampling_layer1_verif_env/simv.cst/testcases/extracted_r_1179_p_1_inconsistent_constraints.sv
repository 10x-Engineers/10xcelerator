class c_1179_1;
    integer i = -195;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1179_1;
    c_1179_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01z0xx01xz1zzzxzzz11z0010x0zxxxzxxxxxzxxxzzxxzzzzxzzxxxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
