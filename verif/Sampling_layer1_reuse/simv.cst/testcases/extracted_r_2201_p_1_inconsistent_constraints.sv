class c_2201_1;
    integer i = -365;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2201_1;
    c_2201_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1011xxzxx11z1xz1x0x1zz1x0001xzzxxxzzxzzxxxzxxxzxxxzzxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram