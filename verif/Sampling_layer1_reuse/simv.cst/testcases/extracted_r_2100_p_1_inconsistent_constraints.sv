class c_2100_1;
    integer i = -348;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2100_1;
    c_2100_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0110xzzxxxx00x0z1z00z1x00xxz1zxzzxzxzxxxzxxxzzzxzxzzzzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
