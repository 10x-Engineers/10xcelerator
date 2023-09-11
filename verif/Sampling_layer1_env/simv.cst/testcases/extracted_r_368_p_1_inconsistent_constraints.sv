class c_368_1;
    integer i = -60;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_368_1;
    c_368_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11xz1z0x01xzzzx11100xxz110z111zxxxzxzzzxzzzxxxxzxxxxxzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
