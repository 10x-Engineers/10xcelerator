class c_439_1;
    integer i = -72;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_439_1;
    c_439_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzz1z0z10101x1zz000x0z1xx0z10zzxzxzxzzzxzxzzxxxzzxzzzzxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
