class c_285_1;
    integer i = -46;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_285_1;
    c_285_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zz0x0x10z100010z0xzzz10zzz000zxxxxzzzzzzzzxzxzzzxxxzzzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
