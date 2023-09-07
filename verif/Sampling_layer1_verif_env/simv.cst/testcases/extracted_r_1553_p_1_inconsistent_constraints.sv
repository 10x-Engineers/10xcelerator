class c_1553_1;
    integer i = -257;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1553_1;
    c_1553_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z01xx01x100x011z11xzxxz1100z00xzzxzxzxzxxxxzzxzxxxzxxxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
