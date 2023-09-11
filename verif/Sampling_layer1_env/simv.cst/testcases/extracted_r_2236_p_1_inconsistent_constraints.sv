class c_2236_1;
    integer i = -371;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2236_1;
    c_2236_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx01xxzxx1x100z1zxzz0z0zxxz10xxxxzzxzxxzzzxxxzzxxxzxxzzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
