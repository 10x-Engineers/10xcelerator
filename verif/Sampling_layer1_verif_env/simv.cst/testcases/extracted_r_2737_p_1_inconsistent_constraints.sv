class c_2737_1;
    integer i = -455;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2737_1;
    c_2737_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xzzz100zzxx0x0z0xxx011z1100x1zzzzzxzxzxzxzxxzzxxxzxzxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
