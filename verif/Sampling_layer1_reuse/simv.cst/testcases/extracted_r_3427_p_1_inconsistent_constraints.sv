class c_3427_1;
    integer i = -570;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3427_1;
    c_3427_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1zz1zxzzz0z0zxx00xxz100z0z0zxzzzxxxzxxxzxzzxzxzxzxxxzzzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
