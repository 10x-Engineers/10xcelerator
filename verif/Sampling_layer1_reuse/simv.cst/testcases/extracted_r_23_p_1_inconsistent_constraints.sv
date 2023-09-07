class c_23_1;
    integer i = -2;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_23_1;
    c_23_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z0xx0x1xxz100000xxxxxz1001z0xzxxxxxzxxxzxzxzxzzxzxxxxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
