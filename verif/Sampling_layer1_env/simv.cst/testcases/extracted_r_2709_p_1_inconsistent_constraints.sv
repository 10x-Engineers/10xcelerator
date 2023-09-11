class c_2709_1;
    integer i = -450;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2709_1;
    c_2709_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxx0z1001101z0z111z1x1xzz0101zzxzzxzzzzzzzzxzzzzxxzzxxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
