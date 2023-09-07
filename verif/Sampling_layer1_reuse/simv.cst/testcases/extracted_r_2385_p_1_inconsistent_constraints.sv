class c_2385_1;
    integer i = -396;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2385_1;
    c_2385_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x00z110zx110x0z0xz1z0xz101x0zxxxzzxxzzzzxxzxxxzzzzzzzxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
