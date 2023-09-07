class c_2014_1;
    integer i = -334;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2014_1;
    c_2014_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110xxzx0000z1x0x1zxz0x010zz0x1zzxzzxzzxzxzzzzxzxxzzxzzzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
