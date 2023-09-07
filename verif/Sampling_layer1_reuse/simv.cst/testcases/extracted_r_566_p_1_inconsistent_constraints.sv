class c_566_1;
    integer i = -93;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_566_1;
    c_566_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxzz000xxxxxxx1x1x1xz0011110xzxzzzxxxzzzzxzxxxzzxxxzzzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
