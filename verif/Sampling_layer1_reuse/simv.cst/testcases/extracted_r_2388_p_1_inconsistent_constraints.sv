class c_2388_1;
    integer i = -396;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2388_1;
    c_2388_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xx01x1z11xz00z01x111001zxx000xzxxxzzzxzzxxzxzzxzxxxxzzxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
