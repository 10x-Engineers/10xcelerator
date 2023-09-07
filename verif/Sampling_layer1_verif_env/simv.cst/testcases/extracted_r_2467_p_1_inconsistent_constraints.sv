class c_2467_1;
    integer i = -410;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2467_1;
    c_2467_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1xx11z1z11xz00z00z0zx0xxz111zzzxxzxzxzxzxzzxzxzzzzxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
