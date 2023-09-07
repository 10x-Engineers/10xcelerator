class c_2322_1;
    integer i = -385;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2322_1;
    c_2322_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x1xzzx1xxz100xx0xx0x00z1x10z0zxzxzxzxzxzxxzzxzzzzzxzxxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
