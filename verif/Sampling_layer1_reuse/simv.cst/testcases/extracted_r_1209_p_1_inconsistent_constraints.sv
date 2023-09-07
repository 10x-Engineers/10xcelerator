class c_1209_1;
    integer i = -200;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1209_1;
    c_1209_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzxx100xx101x1x1z1x1z1xz00zxx0xzzxxzxzxxxzzxzxxzzzxxxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
