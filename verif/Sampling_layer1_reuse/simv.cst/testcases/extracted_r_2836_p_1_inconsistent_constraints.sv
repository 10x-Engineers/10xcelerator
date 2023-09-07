class c_2836_1;
    integer i = -471;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2836_1;
    c_2836_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1zzzx1111z0zzx1x0xzzzx00zzx11zzxzxxxzxxxxxxxxxxxzzxxxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
