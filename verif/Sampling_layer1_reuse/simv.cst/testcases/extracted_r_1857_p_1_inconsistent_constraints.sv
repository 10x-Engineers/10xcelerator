class c_1857_1;
    integer i = -308;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1857_1;
    c_1857_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx01010zxx1z0zzzz0001zzzzx0x01zzzxzzxxxxxzzxzzzzxxxzxzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
