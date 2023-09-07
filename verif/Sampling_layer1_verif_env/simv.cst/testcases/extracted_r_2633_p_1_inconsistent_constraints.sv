class c_2633_1;
    integer i = -437;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2633_1;
    c_2633_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110xz0x1zxx1zxzxz1x10zzz00xz1z0xzxxzzxxxxxzxzzxzxxxzzzzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
