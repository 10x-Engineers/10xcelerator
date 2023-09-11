class c_835_1;
    integer i = -138;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_835_1;
    c_835_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xxzz1x0xx00x010xxxzx1zzxxz101xxzxzzzzxxzzxxxzzzzzxxxzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
