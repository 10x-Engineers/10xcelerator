class c_1420_1;
    integer i = -235;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1420_1;
    c_1420_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xx1xxx1z1001xz0x00xx0z0100zzx1zzzzxxzxzxxzzxzxxxzxzzxxxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
