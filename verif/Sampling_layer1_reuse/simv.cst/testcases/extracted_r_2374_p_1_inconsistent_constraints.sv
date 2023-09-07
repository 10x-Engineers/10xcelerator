class c_2374_1;
    integer i = -394;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2374_1;
    c_2374_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxz00x1000zzzz00z0x1110z1x0z11zzxzzxxzxzxzzxxzzzzzzxxzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
