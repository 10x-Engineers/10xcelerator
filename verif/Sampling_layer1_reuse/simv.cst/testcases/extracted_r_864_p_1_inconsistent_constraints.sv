class c_864_1;
    integer i = -142;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_864_1;
    c_864_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1xzx10x000xx01zzz10zzx0x0zxx1xxxzxxxzxzxzxzzzzxzxzxzzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
