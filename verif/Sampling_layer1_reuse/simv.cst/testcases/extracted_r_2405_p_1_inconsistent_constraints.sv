class c_2405_1;
    integer i = -399;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2405_1;
    c_2405_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x01110zx0z111z0x0zxx01zx0z101xxzxzzzzxzxxxzzzxzxzzxxzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
