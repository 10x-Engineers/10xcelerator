class c_2412_1;
    integer i = -400;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2412_1;
    c_2412_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z110011xx0x0zxz1101xz1zz0xz0xxxzzxzzxzzzzxxzzxxxzzxxzxzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
