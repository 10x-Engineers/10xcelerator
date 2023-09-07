class c_745_1;
    integer i = -123;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_745_1;
    c_745_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1z00z0x111x1x1x111z01xx111xx0xzzxxzzzzzxxxxxzzxzxxzxxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
