class c_2652_1;
    integer i = -440;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2652_1;
    c_2652_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11z0zzzxx0xzx1zx0110zxx0x110z0zzxzzzzxxzxzxxxzxxxzxxxzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
