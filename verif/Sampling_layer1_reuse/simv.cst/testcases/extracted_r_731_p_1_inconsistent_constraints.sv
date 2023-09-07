class c_731_1;
    integer i = -120;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_731_1;
    c_731_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xzx0z0xz1zx0000zzx111101xx0z00xxzzxxxxxxxzzzzzxzzzxxzzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
