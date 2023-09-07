class c_2778_1;
    integer i = -461;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2778_1;
    c_2778_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z1zxz1xxz1z1xxx0zx1xz111z00z0xxzxzzzxxzzzzxxzzxxzzzxxxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
