class c_350_1;
    integer i = -57;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_350_1;
    c_350_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1110x1xzzz1xxz1110x1x0zx1xxz0zxzxzxzzzzxxzxxxxzzzxzxzxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
