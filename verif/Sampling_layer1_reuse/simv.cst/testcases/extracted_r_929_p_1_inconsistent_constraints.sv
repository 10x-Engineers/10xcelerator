class c_929_1;
    integer i = -153;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_929_1;
    c_929_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz101x0zxx1zxxx0xzz0z1010zz0zz1zzzxzzzxzxzxxxzzzxxzzxxzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
