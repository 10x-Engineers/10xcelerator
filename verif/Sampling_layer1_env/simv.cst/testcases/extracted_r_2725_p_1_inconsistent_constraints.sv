class c_2725_1;
    integer i = -453;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2725_1;
    c_2725_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101xz10z1100xx10zxxzx011x111z1z1zzzzxzxxzxxzxzzxzxxzxxzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
