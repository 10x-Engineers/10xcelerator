class c_2393_1;
    integer i = -397;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2393_1;
    c_2393_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0zz10101z0xzxzz11z00z100x11xxxxxxzzxzxzxxxzzxxxzzxxxzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
