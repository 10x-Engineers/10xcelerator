class c_3205_1;
    integer i = -533;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3205_1;
    c_3205_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zxxzzz000xx11101zzx00110101x0xzxxzzzxxxxzzzzzzxzzzzzxxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
