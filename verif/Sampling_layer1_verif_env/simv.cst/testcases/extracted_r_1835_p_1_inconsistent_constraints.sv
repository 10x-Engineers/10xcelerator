class c_1835_1;
    integer i = -304;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1835_1;
    c_1835_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x01xz11xx111x1110xzzz1z00xzxzxzzxzxzzzzxxzzxzxzzxzxxxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
