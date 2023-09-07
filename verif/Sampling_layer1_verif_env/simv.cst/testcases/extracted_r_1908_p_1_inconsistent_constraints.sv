class c_1908_1;
    integer i = -316;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1908_1;
    c_1908_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xxz0xz1xxz0xx11x0zx1zz00zxx1zzzzzxxxzzzxzxzzxxzzxzxzxzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
