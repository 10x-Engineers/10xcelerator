class c_2103_1;
    integer i = -349;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2103_1;
    c_2103_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x0x0z1xx000xxzzz0zz01z1z0x100zzxzxzzzzzzxzxzxzzxzxxxxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
