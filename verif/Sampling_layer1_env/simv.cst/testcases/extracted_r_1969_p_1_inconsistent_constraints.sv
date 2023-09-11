class c_1969_1;
    integer i = -327;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1969_1;
    c_1969_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxz0x0x011xzz0xz1x010zzx0001xxxxxxxxxxxxzzxzxzxxzxzzzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
