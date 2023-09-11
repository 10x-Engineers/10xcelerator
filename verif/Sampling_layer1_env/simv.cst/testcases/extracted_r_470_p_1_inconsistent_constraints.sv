class c_470_1;
    integer i = -77;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_470_1;
    c_470_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx0x1z101x0zz1zzxx100x1z01x10zzzzxzxzzxxxzzzzzzxzxzzzzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
