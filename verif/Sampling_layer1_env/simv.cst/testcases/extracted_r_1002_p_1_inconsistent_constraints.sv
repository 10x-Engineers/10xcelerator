class c_1002_1;
    integer i = -165;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1002_1;
    c_1002_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x111z1z1xx1xx10z1xxz0z00x0z1xxxzxxxxxxxzzxxzzzxzzxxzzxxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
