class c_3383_1;
    integer i = -562;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3383_1;
    c_3383_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z0zxxz001x1xz11xxzx011x11xxxxxxzzzzxzxxxzzxxzxxxxzzxzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
