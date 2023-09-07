class c_1616_1;
    integer i = -268;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1616_1;
    c_1616_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x0x01010010x111xxx1zzx1z011z0xzzzzxzzxzzxzzxxzzzxzzxzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
