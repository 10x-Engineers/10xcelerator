class c_557_1;
    integer i = -91;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_557_1;
    c_557_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0xx001zzzz1xzzxx0z01z100zzx10zzzxzxzzzzxxxzxzzxzzzzxzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
