class c_1986_1;
    integer i = -329;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1986_1;
    c_1986_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0xxx0000xz0zz0x0x010xxx110x00zzxzzxzzxxxzzzzzzzxzzxxxzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
