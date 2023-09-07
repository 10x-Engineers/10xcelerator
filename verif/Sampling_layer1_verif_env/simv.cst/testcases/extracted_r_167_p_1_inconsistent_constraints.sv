class c_167_1;
    integer i = -26;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_167_1;
    c_167_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0x00z011z0xxz10x0z1z1z1xx01xzxxxzzzxxxxzzxzxzxxxzxzzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
