class c_3430_1;
    integer i = -570;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3430_1;
    c_3430_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000z1z1zxz101zzzx1z1x0xx01xxxxxzzzzxzxzxzxxxzzzxzxxxxxxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
