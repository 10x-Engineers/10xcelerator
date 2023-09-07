class c_3203_1;
    integer i = -532;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3203_1;
    c_3203_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100x0xx1x010z0xxxx10xx110zz0x0zzxzzxzxzzzzzzzzxzzxzxzxxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
