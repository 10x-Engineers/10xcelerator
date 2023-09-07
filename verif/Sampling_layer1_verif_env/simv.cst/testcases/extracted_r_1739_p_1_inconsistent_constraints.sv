class c_1739_1;
    integer i = -288;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1739_1;
    c_1739_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101xx0xx0x01z010xx1x1x010zx11100xzzxzxzzzzzxxzxzxzxxxxzzzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
