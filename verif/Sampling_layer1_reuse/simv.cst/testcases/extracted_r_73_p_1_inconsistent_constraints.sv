class c_73_1;
    integer i = -11;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_73_1;
    c_73_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx01111xzz00xzxzz0x0z00zzx0z01zxxzxxxzzxzzxzzzzzxxxzzzzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
