class c_2883_1;
    integer i = -479;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2883_1;
    c_2883_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00011xxz111z00zx10z1z1z0z110x1zxzzzxxzzzxzzxzxxxzzzzzxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
