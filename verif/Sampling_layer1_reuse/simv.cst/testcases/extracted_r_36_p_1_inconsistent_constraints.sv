class c_36_1;
    integer i = -4;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_36_1;
    c_36_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1xz0010zx01z11xxz1xx00xz00z011zxzzxzzzzzxxzxzxzxxzzxzxzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
