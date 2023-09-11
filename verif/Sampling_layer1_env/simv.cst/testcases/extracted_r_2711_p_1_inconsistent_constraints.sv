class c_2711_1;
    integer i = -450;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2711_1;
    c_2711_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0110z0z00001x010xz01zxz1011xxzzxzzxxxzxzzxxxxzzzxxxzzxxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
