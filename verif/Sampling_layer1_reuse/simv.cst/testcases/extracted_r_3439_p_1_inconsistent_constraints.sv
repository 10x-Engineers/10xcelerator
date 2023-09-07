class c_3439_1;
    integer i = -572;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3439_1;
    c_3439_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01000z01z0xz10100xz0010z1zzz0xxxxxxxxxxxxzzxzxxxzxzxxzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
