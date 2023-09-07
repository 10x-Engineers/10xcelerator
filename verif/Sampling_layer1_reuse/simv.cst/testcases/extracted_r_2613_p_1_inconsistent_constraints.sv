class c_2613_1;
    integer i = -434;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2613_1;
    c_2613_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0x0zxzzzxz0xx11x0x10x1x011x010xxxxxzxzxxxzzxxzzzzzxxxzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
