class c_266_1;
    integer i = -43;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_266_1;
    c_266_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx10xxz1xxz11z00z11z1xxxzzxx10zzxxzxxxzzxzzzzzzxxxzzxzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
