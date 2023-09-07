class c_2043_1;
    integer i = -339;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2043_1;
    c_2043_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10zxxzz1xzzxzxxzxxxz00x1zzz010xxzzzzzzxxzxzxzxzxxxzzxxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
