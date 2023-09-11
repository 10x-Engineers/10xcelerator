class c_2948_1;
    integer i = -490;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2948_1;
    c_2948_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11zxx00xx01zxx00011zxx00z0z011xxzzzxzxxxxzzzxzzzzzxzzxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
