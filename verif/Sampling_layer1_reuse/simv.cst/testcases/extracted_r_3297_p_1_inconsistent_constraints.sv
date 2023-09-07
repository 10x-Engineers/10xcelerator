class c_3297_1;
    integer i = -548;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3297_1;
    c_3297_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxz10zx000x1xzz1010z0z1zxxxz00xzzxzxzxxxzzxzzzzxxzzzxzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
