class c_2152_1;
    integer i = -357;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2152_1;
    c_2152_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1x0z0x010zx0x01xxxx0z01zxzxx1zxzxzxzxzzzzzxxxzxxzzxzzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram