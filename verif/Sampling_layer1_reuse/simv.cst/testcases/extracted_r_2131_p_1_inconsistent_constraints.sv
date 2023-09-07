class c_2131_1;
    integer i = -354;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2131_1;
    c_2131_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxz0z010x101zz00x1xxxz10z0011xxzzzzxxxzzzzxxzzxzxzxxxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
