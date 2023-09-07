class c_1589_1;
    integer i = -263;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1589_1;
    c_1589_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx1zzxz1x1zx0z101xz0111zzzzzz11xzzzzxxxxzzxzzxxxzzxzzzxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram