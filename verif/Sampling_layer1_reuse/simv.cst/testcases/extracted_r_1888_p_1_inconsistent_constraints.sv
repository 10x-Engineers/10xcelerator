class c_1888_1;
    integer i = -313;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1888_1;
    c_1888_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110zx10x000xxz11xz0zz111z0zz1x0zzzxxxzzxxzzxxxzzxzzxxxxzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
