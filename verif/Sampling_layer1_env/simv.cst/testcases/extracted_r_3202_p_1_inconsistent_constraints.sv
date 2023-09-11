class c_3202_1;
    integer i = -532;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3202_1;
    c_3202_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100zx01111zz1xx100zxx0z01zxzxxzzxxzzxzzzzzxzzxzxzxxzzxxzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
