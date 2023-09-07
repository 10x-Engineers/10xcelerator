class c_1149_1;
    integer i = -190;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1149_1;
    c_1149_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110xz100z0z11xx111x1z11xz1x0000xzzzzxzxzzzxxzzxzxxzxxxxzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
