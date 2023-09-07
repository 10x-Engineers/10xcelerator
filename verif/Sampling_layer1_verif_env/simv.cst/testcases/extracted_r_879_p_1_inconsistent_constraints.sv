class c_879_1;
    integer i = -145;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_879_1;
    c_879_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0xzx101zzz01zz0z1xx0xx000z11zxxxzxzxzxxxzzzzxxxzzzxxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
