class c_697_1;
    integer i = -115;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_697_1;
    c_697_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0xx01z1zz0z0z00xx00xz1x1z011zzxxxzxzxzxxzzxzzxzxzzzzzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
