class c_2047_1;
    integer i = -340;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2047_1;
    c_2047_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01xzxx000zzz1xx00xxxx1z0z111x0zxxxzzzzzzxxzxzzxzxzzxxxxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
