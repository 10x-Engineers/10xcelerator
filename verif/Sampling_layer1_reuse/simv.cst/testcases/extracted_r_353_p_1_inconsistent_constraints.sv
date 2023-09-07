class c_353_1;
    integer i = -57;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_353_1;
    c_353_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z00xx1zx10z0x00xx1100101z10z1zzxxxzzxzxzxzxzzxxxzzzxzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
