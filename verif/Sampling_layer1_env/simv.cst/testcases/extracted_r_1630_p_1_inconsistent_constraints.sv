class c_1630_1;
    integer i = -270;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1630_1;
    c_1630_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x0zzx10xxx1000011z0xx01zx0zxxxxxxzxxzzzzzxxxxxxzzzxzzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
