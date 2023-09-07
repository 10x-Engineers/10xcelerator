class c_3061_1;
    integer i = -509;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3061_1;
    c_3061_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010xx00x0zzzxxzxxx1z1x11xxzxxxxzzzzxzxxzxzzxzzxxzzzzxxxxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
