class c_1406_1;
    integer i = -233;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1406_1;
    c_1406_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxzxz1zzxz01x0xz0xz0xx000xx11zxzzzzxxxxxxxzxzxzzxxxzxxzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
