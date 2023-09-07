class c_569_1;
    integer i = -93;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_569_1;
    c_569_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xz0101zz00z0x0xz0111z0z00z1x1xxzzxzzxzxzzzxzzzzzzzxxxxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
