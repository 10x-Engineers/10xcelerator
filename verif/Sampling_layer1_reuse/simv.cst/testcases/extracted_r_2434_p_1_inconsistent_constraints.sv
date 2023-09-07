class c_2434_1;
    integer i = -404;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2434_1;
    c_2434_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzz101x1zx0zz1zxx0110011xxxxx1xxzxxzxzxzzxxzzzzzzzzzxxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
