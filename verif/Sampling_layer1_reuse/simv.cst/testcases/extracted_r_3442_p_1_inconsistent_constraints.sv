class c_3442_1;
    integer i = -572;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3442_1;
    c_3442_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0001010x1010z001xzxzxxx00z0xzzxxxxzxxzzzxzxzxxxxzzxxzxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
