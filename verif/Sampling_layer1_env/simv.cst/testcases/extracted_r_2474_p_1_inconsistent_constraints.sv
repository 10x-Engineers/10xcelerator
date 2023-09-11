class c_2474_1;
    integer i = -411;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2474_1;
    c_2474_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzzx0xzx1z1xz1z0z1xzz0110x0xx0zzzxxxzzzxzzzzzzxzxxzzxxxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
