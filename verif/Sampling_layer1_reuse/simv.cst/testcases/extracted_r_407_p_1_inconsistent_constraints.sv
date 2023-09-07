class c_407_1;
    integer i = -66;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_407_1;
    c_407_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz000z0x000x00110z0z1zzzzx00xz0xzzzzxzzzzzzxzzzzxxxxxzzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
