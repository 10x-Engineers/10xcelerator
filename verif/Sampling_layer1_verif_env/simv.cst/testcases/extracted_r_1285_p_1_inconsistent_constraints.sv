class c_1285_1;
    integer i = -213;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1285_1;
    c_1285_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x10x0zx011x10z11z0zxz000x0111zzzxxxxxxzzxzxzzxzzzzzzxzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
