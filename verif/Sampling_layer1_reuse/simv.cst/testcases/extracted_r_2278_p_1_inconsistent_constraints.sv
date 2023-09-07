class c_2278_1;
    integer i = -378;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2278_1;
    c_2278_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10z0x0z0x01x0z1z1x001001xzzx1zxzzzxxxxxxzxzzzzxzzxxxzxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
