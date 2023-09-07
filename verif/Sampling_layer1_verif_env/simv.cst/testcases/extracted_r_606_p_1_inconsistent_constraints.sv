class c_606_1;
    integer i = -99;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_606_1;
    c_606_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11xzzz001101x11x0z1111z0xxxx0zzxxzzxzxxzxxzxxzxzzxzzxxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
