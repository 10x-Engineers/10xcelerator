class c_2266_1;
    integer i = -376;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2266_1;
    c_2266_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0x010010001zxzx111x10000xzxz0xzzzzxxzxzxzxzzzzxxxxzzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
