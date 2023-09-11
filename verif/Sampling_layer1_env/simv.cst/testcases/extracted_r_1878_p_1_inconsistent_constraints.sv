class c_1878_1;
    integer i = -311;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1878_1;
    c_1878_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1010zx01xx0x1z0011110z111z1xxxzxzxzxzzxxzzxzzzzxzzxzzxxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
