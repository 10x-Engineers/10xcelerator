class c_2870_1;
    integer i = -477;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2870_1;
    c_2870_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z010x10z1x100zxx1z1xxx1z1x101x1zzzzzxxzzxxzzzxzxxzzxzzzxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
