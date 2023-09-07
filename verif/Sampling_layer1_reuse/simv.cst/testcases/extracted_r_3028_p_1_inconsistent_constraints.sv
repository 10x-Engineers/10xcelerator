class c_3028_1;
    integer i = -503;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3028_1;
    c_3028_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxzxx00zz000z01xxz101xxx0xx11zxzxzxxzxzzxxxxxzzxzzzzxzxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
