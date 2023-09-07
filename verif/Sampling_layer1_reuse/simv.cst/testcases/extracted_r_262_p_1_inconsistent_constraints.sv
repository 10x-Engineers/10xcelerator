class c_262_1;
    integer i = -42;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_262_1;
    c_262_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxz1x0x1111z1x0001110z0zzx011xzxxxzxxxzzzxzzzxxxzzzzzxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
