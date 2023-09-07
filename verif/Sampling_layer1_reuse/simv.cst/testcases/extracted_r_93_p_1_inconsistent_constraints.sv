class c_93_1;
    integer i = -14;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_93_1;
    c_93_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz11xzz11zxz0z111x0zzx0x1zzxz00xxxzxzxxzzxxzzxzzzzzzxzxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
