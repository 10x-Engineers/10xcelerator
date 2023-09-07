class c_1021_1;
    integer i = -169;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1021_1;
    c_1021_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx011z10111101x0x0zx0x0xx100zx0zzxzxzzzzxxxxxxxxxxzxxxxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
