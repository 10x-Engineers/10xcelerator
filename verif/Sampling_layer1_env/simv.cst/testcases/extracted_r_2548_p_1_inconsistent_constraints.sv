class c_2548_1;
    integer i = -423;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2548_1;
    c_2548_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxz1111z1zzxxzxzz11xzzxx1z0x11zzxzxzxxxzzxxzxzxxxxzxxxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
