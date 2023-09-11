class c_292_1;
    integer i = -47;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_292_1;
    c_292_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11010zzxz1010xx1x0zzxz1xxz011110zxxzzzxxzxxxxzxxxxzzxxzxzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
